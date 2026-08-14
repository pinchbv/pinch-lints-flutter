# 3.0.0

* **Breaking:** the package is renamed from `pinch_lints` to `apadmi_lints` as
  part of the Pinch → Apadmi rebrand. Update your `pubspec.yaml` dependency,
  the `include:` line and `plugins` section in `analysis_options.yaml`, and
  any `// ignore: pinch_lints/...` comments (the prefix is now
  `apadmi_lints/...`).
* Add the `avoid_returning_widgets` custom rule, shipped as a native analyzer
  plugin. It flags helper functions, methods, and getters that return a
  `Widget` (or subtype); extract a `StatelessWidget` instead. Enable it by
  adding a top-level `plugins` section to your root `analysis_options.yaml`
  (see the README — it is not activated by the `include` line alone).
* **Breaking:** the minimum SDK is now Dart 3.10 / Flutter 3.38 (analyzer
  plugin support). Projects on older SDKs should stay on 2.x.

# 2.1.0

* Preserve trailing commas

## 0.0.1

* TODO: Describe initial release.
