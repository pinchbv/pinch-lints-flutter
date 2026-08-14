import 'package:analyzer_testing/analysis_rule/analysis_rule.dart';
import 'package:pinch_lints/src/rules/avoid_returning_widgets.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(AvoidReturningWidgetsTest);
  });
}

@reflectiveTest
class AvoidReturningWidgetsTest extends AnalysisRuleTest {
  @override
  void setUp() {
    rule = AvoidReturningWidgets();
    newPackage('flutter')..addFile('lib/widgets.dart', r'''
class Widget {
  const Widget();
}

class BuildContext {}

abstract class StatelessWidget extends Widget {
  const StatelessWidget();

  Widget build(BuildContext context);
}

class Text extends Widget {
  const Text(String data);
}
''');
    super.setUp();
  }

  void test_topLevelFunction() async {
    await assertDiagnostics(
      r'''
import 'package:flutter/widgets.dart';

Widget buildHeader() => const Text('header');
''',
      [lint(47, 11)],
    );
  }

  void test_topLevelGetter() async {
    await assertDiagnostics(
      r'''
import 'package:flutter/widgets.dart';

Widget get header => const Text('header');
''',
      [lint(51, 6)],
    );
  }

  void test_localFunction() async {
    await assertDiagnostics(
      r'''
import 'package:flutter/widgets.dart';

void main() {
  Widget helper() => const Text('helper');
  helper();
}
''',
      [lint(63, 6)],
    );
  }

  void test_instanceMethod() async {
    await assertDiagnostics(
      r'''
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget();

  @override
  Widget build(BuildContext context) => body(context);

  Widget body(BuildContext context) => const Text('body');
}
''',
      [lint(179, 4)],
    );
  }

  void test_instanceGetter() async {
    await assertDiagnostics(
      r'''
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget();

  @override
  Widget build(BuildContext context) => spacer;

  Widget get spacer => const Text('spacer');
}
''',
      [lint(176, 6)],
    );
  }

  void test_staticMethod() async {
    await assertDiagnostics(
      r'''
import 'package:flutter/widgets.dart';

class WidgetFactory {
  static Widget create() => const Text('created');
}
''',
      [lint(78, 6)],
    );
  }

  void test_widgetSubtypeReturn() async {
    await assertDiagnostics(
      r'''
import 'package:flutter/widgets.dart';

Text buildTitle() => const Text('title');
''',
      [lint(45, 10)],
    );
  }

  void test_buildOverride_noLint() async {
    await assertNoDiagnostics(r'''
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget();

  @override
  Widget build(BuildContext context) => const Text('body');
}
''');
  }

  void test_nonWidgetReturn_noLint() async {
    await assertNoDiagnostics(r'''
String buildGreeting() => 'Hello';
''');
  }

  void test_setter_noLint() async {
    await assertNoDiagnostics(r'''
import 'package:flutter/widgets.dart';

class Holder {
  Widget current = const Widget();

  set widget(Widget value) {
    current = value;
  }
}
''');
  }

  void test_widgetTypedVariable_noLint() async {
    await assertNoDiagnostics(r'''
import 'package:flutter/widgets.dart';

const Widget empty = Widget();
''');
  }

  void test_nonFlutterWidgetClass_noLint() async {
    await assertNoDiagnostics(r'''
class Widget {
  const Widget();
}

Widget buildHeader() => const Widget();
''');
  }
}
