import 'package:analysis_server_plugin/plugin.dart';
import 'package:analysis_server_plugin/registry.dart';
import 'package:apadmi_lints/src/rules/avoid_returning_widgets.dart';

final plugin = ApadmiLintsPlugin();

class ApadmiLintsPlugin extends Plugin {
  @override
  String get name => 'apadmi_lints';

  @override
  void register(PluginRegistry registry) {
    registry.registerWarningRule(AvoidReturningWidgets());
  }
}
