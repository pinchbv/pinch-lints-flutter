import 'package:flutter/widgets.dart';

// The `avoid_returning_widgets` custom rule flags helper functions, methods,
// and getters that return widgets. The ignores below mark the planted
// violations; remove one to see the diagnostic appear in `dart analyze`.

// ignore: apadmi_lints/avoid_returning_widgets, custom rule for Apadmi
Widget buildTitle() => const Text('title');

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  // ignore: apadmi_lints/avoid_returning_widgets, custom rule for Apadmi
  Widget get _spacer => const SizedBox(height: 8);

  // ignore: apadmi_lints/avoid_returning_widgets, custom rule for Apadmi
  Widget _buildBody(BuildContext context) => const Text('body');

  // The `build` override itself is exempt from the rule.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const _Header(),
        _spacer,
        _buildBody(context),
      ],
    );
  }
}

// Extracting a widget class is the preferred alternative to helper functions.
class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) => const Text('header');
}
