import 'package:analyzer/analysis_rule/analysis_rule.dart';
import 'package:analyzer/analysis_rule/rule_context.dart';
import 'package:analyzer/analysis_rule/rule_visitor_registry.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/error/error.dart';

class AvoidReturningWidgets extends AnalysisRule {
  AvoidReturningWidgets()
    : super(
        name: 'avoid_returning_widgets',
        description:
            'Helper functions, methods, and getters that return widgets '
            'hide part of the widget tree from Flutter, hurting rebuild '
            'granularity, const-ability, and DevTools inspection. Prefer '
            'extracting a dedicated StatelessWidget subclass.',
      );

  @override
  LintCode get diagnosticCode => LintCode(
    'avoid_returning_widgets',
    'Avoid returning widgets from helper functions, methods, or getters.',
    correctionMessage:
        'Try extracting the widget into its own StatelessWidget class.',
    severity: DiagnosticSeverity.ERROR,
  );

  @override
  void registerNodeProcessors(
    RuleVisitorRegistry registry,
    RuleContext context,
  ) {
    final visitor = _Visitor(this);
    registry.addFunctionDeclaration(this, visitor);
    registry.addMethodDeclaration(this, visitor);
  }
}

class _Visitor extends SimpleAstVisitor<void> {
  _Visitor(this.rule);

  final AnalysisRule rule;

  @override
  void visitFunctionDeclaration(FunctionDeclaration node) {
    if (node.isSetter) {
      return;
    }
    final element = node.declaredFragment?.element;
    if (element == null) {
      return;
    }
    if (_isWidgetType(element.returnType)) {
      rule.reportAtToken(node.name);
    }
  }

  @override
  void visitMethodDeclaration(MethodDeclaration node) {
    if (node.isSetter || node.isOperator) {
      return;
    }
    final element = node.declaredFragment?.element;
    if (element == null) {
      return;
    }
    // Overridden members such as `build` don't get to choose their own
    // signature, so they are exempt.
    if (element.metadata.hasOverride) {
      return;
    }
    if (_isWidgetType(element.returnType)) {
      rule.reportAtToken(node.name);
    }
  }

  bool _isWidgetType(DartType type) {
    if (type is! InterfaceType) {
      return false;
    }
    if (_isWidgetClass(type.element)) {
      return true;
    }
    return type.element.allSupertypes.any(
      (InterfaceType supertype) => _isWidgetClass(supertype.element),
    );
  }

  bool _isWidgetClass(InterfaceElement element) =>
      element.name == 'Widget' &&
      element.library.uri.toString().startsWith('package:flutter/');
}
