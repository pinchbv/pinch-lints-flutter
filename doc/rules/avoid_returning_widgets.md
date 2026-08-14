# avoid_returning_widgets

Avoid returning widgets from helper functions, methods, or getters.

## Details

**DON'T** create helper functions, methods, or getters that build and return a
`Widget` (or a subtype). Extract a dedicated `StatelessWidget` subclass
instead.

Widget-returning helpers hide part of the widget tree from Flutter:

- **Rebuild granularity** — a helper's subtree has no element of its own, so it
  rebuilds whenever the enclosing `build` method runs. An extracted widget
  class only rebuilds when its own inputs change.
- **Const-ability** — an extracted widget with a `const` constructor can be
  canonicalized and skipped entirely during rebuilds; a helper call cannot.
- **DevTools inspection** — extracted widgets show up as named nodes in the
  widget inspector, while helper output is inlined anonymously into the parent.
- **API surface** — a widget class declares its dependencies explicitly through
  constructor parameters, instead of implicitly capturing state and context
  from the enclosing class.

**BAD:**

```dart
Widget buildTitle() => const Text('title');

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  Widget get _spacer => const SizedBox(height: 8);

  Widget _buildBody(BuildContext context) => const Text('body');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildTitle(),
        _spacer,
        _buildBody(context),
      ],
    );
  }
}
```

**GOOD:**

```dart
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        _Title(),
        SizedBox(height: 8),
        _Body(),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) => const Text('title');
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => const Text('body');
}
```

## Exemptions

The rule does not report:

- **Overridden members** such as `build` — overrides don't get to choose their
  own signature.
- **Setters and operators.**

## Usage

The rule ships with the `apadmi_lints` analyzer plugin and is enabled by
default once the plugin is set up (see the [README](../../README.md#usage)).

Suppress a single occurrence with an ignore comment (the plugin-name prefix is
required):

```dart
// ignore: apadmi_lints/avoid_returning_widgets
Widget buildLegacyHeader() => const Text('header');
```

Or disable the rule for a whole project in `analysis_options.yaml`:

```yaml
plugins:
  apadmi_lints:
    version: ^3.0.0
    diagnostics:
      avoid_returning_widgets: false
```
