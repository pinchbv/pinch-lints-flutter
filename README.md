# pinch_lints

The Pinch lint rule set for Dart and Flutter projects, built on top of
[flutter_lints](https://pub.dev/packages/flutter_lints). It enables a stricter set of additional
rules and escalates a number of important lints to analysis errors.

## Usage

Add `pinch_lints` to your `dev_dependencies` in `pubspec.yaml`:

```yaml
dev_dependencies:
  pinch_lints: ^2.1.0
```

Then include it in your `analysis_options.yaml`:

```yaml
include: package:pinch_lints/pinch_lints.yaml
```

## Formatter settings

The configuration also sets the following formatter options:

- `page_width: 120` — lines are formatted to a width of 120 characters.
- `trailing_commas: preserve` — trailing commas you write are kept as-is.

## Additional rules

The following rules are enabled on top of what `flutter_lints` (and the underlying `core` and
`recommended` sets from `package:lints`) already provides. Each rule links to the official Dart
documentation, which explains the rule and includes good/bad examples.

- [always_declare_return_types](https://dart.dev/tools/linter-rules/always_declare_return_types)
- [always_use_package_imports](https://dart.dev/tools/linter-rules/always_use_package_imports)
- [avoid_annotating_with_dynamic](https://dart.dev/tools/linter-rules/avoid_annotating_with_dynamic)
- [avoid_bool_literals_in_conditional_expressions](https://dart.dev/tools/linter-rules/avoid_bool_literals_in_conditional_expressions)
- [avoid_catching_errors](https://dart.dev/tools/linter-rules/avoid_catching_errors)
- [avoid_dynamic_calls](https://dart.dev/tools/linter-rules/avoid_dynamic_calls)
- [avoid_equals_and_hash_code_on_mutable_classes](https://dart.dev/tools/linter-rules/avoid_equals_and_hash_code_on_mutable_classes)
- [avoid_escaping_inner_quotes](https://dart.dev/tools/linter-rules/avoid_escaping_inner_quotes)
- [avoid_field_initializers_in_const_classes](https://dart.dev/tools/linter-rules/avoid_field_initializers_in_const_classes)
- [avoid_implementing_value_types](https://dart.dev/tools/linter-rules/avoid_implementing_value_types)
- [avoid_js_rounded_ints](https://dart.dev/tools/linter-rules/avoid_js_rounded_ints)
- [avoid_null_checks_in_equality_operators](https://dart.dev/tools/linter-rules/avoid_null_checks_in_equality_operators)
- [avoid_private_typedef_functions](https://dart.dev/tools/linter-rules/avoid_private_typedef_functions)
- [avoid_redundant_argument_values](https://dart.dev/tools/linter-rules/avoid_redundant_argument_values)
- [avoid_returning_this](https://dart.dev/tools/linter-rules/avoid_returning_this)
- [avoid_setters_without_getters](https://dart.dev/tools/linter-rules/avoid_setters_without_getters)
- [avoid_slow_async_io](https://dart.dev/tools/linter-rules/avoid_slow_async_io)
- [avoid_type_to_string](https://dart.dev/tools/linter-rules/avoid_type_to_string)
- [avoid_types_on_closure_parameters](https://dart.dev/tools/linter-rules/avoid_types_on_closure_parameters)
- [avoid_unused_constructor_parameters](https://dart.dev/tools/linter-rules/avoid_unused_constructor_parameters)
- [avoid_void_async](https://dart.dev/tools/linter-rules/avoid_void_async)
- [cancel_subscriptions](https://dart.dev/tools/linter-rules/cancel_subscriptions)
- [cascade_invocations](https://dart.dev/tools/linter-rules/cascade_invocations)
- [cast_nullable_to_non_nullable](https://dart.dev/tools/linter-rules/cast_nullable_to_non_nullable)
- [close_sinks](https://dart.dev/tools/linter-rules/close_sinks)
- [combinators_ordering](https://dart.dev/tools/linter-rules/combinators_ordering)
- [comment_references](https://dart.dev/tools/linter-rules/comment_references)
- [conditional_uri_does_not_exist](https://dart.dev/tools/linter-rules/conditional_uri_does_not_exist)
- [deprecated_consistency](https://dart.dev/tools/linter-rules/deprecated_consistency)
- [deprecated_member_use_from_same_package](https://dart.dev/tools/linter-rules/deprecated_member_use_from_same_package)
- [directives_ordering](https://dart.dev/tools/linter-rules/directives_ordering)
- [discarded_futures](https://dart.dev/tools/linter-rules/discarded_futures)
- [do_not_use_environment](https://dart.dev/tools/linter-rules/do_not_use_environment)
- [eol_at_end_of_file](https://dart.dev/tools/linter-rules/eol_at_end_of_file)
- [implicit_reopen](https://dart.dev/tools/linter-rules/implicit_reopen)
- [invalid_case_patterns](https://dart.dev/tools/linter-rules/invalid_case_patterns)
- [join_return_with_assignment](https://dart.dev/tools/linter-rules/join_return_with_assignment)
- [leading_newlines_in_multiline_strings](https://dart.dev/tools/linter-rules/leading_newlines_in_multiline_strings)
- [library_names](https://dart.dev/tools/linter-rules/library_names)
- [literal_only_boolean_expressions](https://dart.dev/tools/linter-rules/literal_only_boolean_expressions)
- [matching_super_parameters](https://dart.dev/tools/linter-rules/matching_super_parameters)
- [missing_code_block_language_in_doc_comment](https://dart.dev/tools/linter-rules/missing_code_block_language_in_doc_comment)
- [missing_whitespace_between_adjacent_strings](https://dart.dev/tools/linter-rules/missing_whitespace_between_adjacent_strings)
- [no_adjacent_strings_in_list](https://dart.dev/tools/linter-rules/no_adjacent_strings_in_list)
- [no_literal_bool_comparisons](https://dart.dev/tools/linter-rules/no_literal_bool_comparisons)
- [no_runtimeType_toString](https://dart.dev/tools/linter-rules/no_runtimetype_tostring)
- [no_self_assignments](https://dart.dev/tools/linter-rules/no_self_assignments)
- [noop_primitive_operations](https://dart.dev/tools/linter-rules/noop_primitive_operations)
- [omit_local_variable_types](https://dart.dev/tools/linter-rules/omit_local_variable_types)
- [one_member_abstracts](https://dart.dev/tools/linter-rules/one_member_abstracts)
- [only_throw_errors](https://dart.dev/tools/linter-rules/only_throw_errors)
- [package_prefixed_library_names](https://dart.dev/tools/linter-rules/package_prefixed_library_names)
- [parameter_assignments](https://dart.dev/tools/linter-rules/parameter_assignments)
- [prefer_asserts_in_initializer_lists](https://dart.dev/tools/linter-rules/prefer_asserts_in_initializer_lists)
- [prefer_asserts_with_message](https://dart.dev/tools/linter-rules/prefer_asserts_with_message)
- [prefer_const_constructors](https://dart.dev/tools/linter-rules/prefer_const_constructors)
- [prefer_const_declarations](https://dart.dev/tools/linter-rules/prefer_const_declarations)
- [prefer_const_literals_to_create_immutables](https://dart.dev/tools/linter-rules/prefer_const_literals_to_create_immutables)
- [prefer_constructors_over_static_methods](https://dart.dev/tools/linter-rules/prefer_constructors_over_static_methods)
- [prefer_final_in_for_each](https://dart.dev/tools/linter-rules/prefer_final_in_for_each)
- [prefer_final_locals](https://dart.dev/tools/linter-rules/prefer_final_locals)
- [prefer_foreach](https://dart.dev/tools/linter-rules/prefer_foreach)
- [prefer_int_literals](https://dart.dev/tools/linter-rules/prefer_int_literals)
- [prefer_mixin](https://dart.dev/tools/linter-rules/prefer_mixin)
- [prefer_null_aware_method_calls](https://dart.dev/tools/linter-rules/prefer_null_aware_method_calls)
- [prefer_single_quotes](https://dart.dev/tools/linter-rules/prefer_single_quotes)
- [prefer_void_to_null](https://dart.dev/tools/linter-rules/prefer_void_to_null)
- [require_trailing_commas](https://dart.dev/tools/linter-rules/require_trailing_commas)
- [sized_box_shrink_expand](https://dart.dev/tools/linter-rules/sized_box_shrink_expand)
- [sort_pub_dependencies](https://dart.dev/tools/linter-rules/sort_pub_dependencies)
- [sort_unnamed_constructors_first](https://dart.dev/tools/linter-rules/sort_unnamed_constructors_first)
- [test_types_in_equals](https://dart.dev/tools/linter-rules/test_types_in_equals)
- [throw_in_finally](https://dart.dev/tools/linter-rules/throw_in_finally)
- [tighten_type_of_initializing_formals](https://dart.dev/tools/linter-rules/tighten_type_of_initializing_formals)
- [type_annotate_public_apis](https://dart.dev/tools/linter-rules/type_annotate_public_apis)
- [unawaited_futures](https://dart.dev/tools/linter-rules/unawaited_futures)
- [unnecessary_await_in_return](https://dart.dev/tools/linter-rules/unnecessary_await_in_return)
- [unnecessary_breaks](https://dart.dev/tools/linter-rules/unnecessary_breaks)
- [unnecessary_lambdas](https://dart.dev/tools/linter-rules/unnecessary_lambdas)
- [unnecessary_library_directive](https://dart.dev/tools/linter-rules/unnecessary_library_directive)
- [unnecessary_null_aware_operator_on_extension_on_nullable](https://dart.dev/tools/linter-rules/unnecessary_null_aware_operator_on_extension_on_nullable)
- [unnecessary_null_checks](https://dart.dev/tools/linter-rules/unnecessary_null_checks)
- [unnecessary_parenthesis](https://dart.dev/tools/linter-rules/unnecessary_parenthesis)
- [unnecessary_raw_strings](https://dart.dev/tools/linter-rules/unnecessary_raw_strings)
- [unnecessary_statements](https://dart.dev/tools/linter-rules/unnecessary_statements)
- [unreachable_from_main](https://dart.dev/tools/linter-rules/unreachable_from_main)
- [use_colored_box](https://dart.dev/tools/linter-rules/use_colored_box)
- [use_decorated_box](https://dart.dev/tools/linter-rules/use_decorated_box)
- [use_enums](https://dart.dev/tools/linter-rules/use_enums)
- [use_if_null_to_convert_nulls_to_bools](https://dart.dev/tools/linter-rules/use_if_null_to_convert_nulls_to_bools)
- [use_is_even_rather_than_modulo](https://dart.dev/tools/linter-rules/use_is_even_rather_than_modulo)
- [use_late_for_private_fields_and_variables](https://dart.dev/tools/linter-rules/use_late_for_private_fields_and_variables)
- [use_named_constants](https://dart.dev/tools/linter-rules/use_named_constants)
- [use_raw_strings](https://dart.dev/tools/linter-rules/use_raw_strings)
- [use_setters_to_change_properties](https://dart.dev/tools/linter-rules/use_setters_to_change_properties)
- [use_string_buffers](https://dart.dev/tools/linter-rules/use_string_buffers)
- [use_test_throws_matchers](https://dart.dev/tools/linter-rules/use_test_throws_matchers)
- [use_to_and_as_if_applicable](https://dart.dev/tools/linter-rules/use_to_and_as_if_applicable)

## Stricter severities

Violations of the following rules are reported as **errors** instead of the default severity, so
they fail analysis outright:

- [always_declare_return_types](https://dart.dev/tools/linter-rules/always_declare_return_types)
- [annotate_overrides](https://dart.dev/tools/linter-rules/annotate_overrides)
- [avoid_dynamic_calls](https://dart.dev/tools/linter-rules/avoid_dynamic_calls)
- [avoid_empty_else](https://dart.dev/tools/linter-rules/avoid_empty_else)
- [avoid_types_as_parameter_names](https://dart.dev/tools/linter-rules/avoid_types_as_parameter_names)
- [await_only_futures](https://dart.dev/tools/linter-rules/await_only_futures)
- [cancel_subscriptions](https://dart.dev/tools/linter-rules/cancel_subscriptions)
- [close_sinks](https://dart.dev/tools/linter-rules/close_sinks)
- [constant_identifier_names](https://dart.dev/tools/linter-rules/constant_identifier_names)
- [dead_code](https://dart.dev/tools/diagnostic-messages#dead_code)
- [hash_and_equals](https://dart.dev/tools/linter-rules/hash_and_equals)
- [literal_only_boolean_expressions](https://dart.dev/tools/linter-rules/literal_only_boolean_expressions)
- [no_duplicate_case_values](https://dart.dev/tools/linter-rules/no_duplicate_case_values)
- [prefer_void_to_null](https://dart.dev/tools/linter-rules/prefer_void_to_null)
- [throw_in_finally](https://dart.dev/tools/linter-rules/throw_in_finally)
- [unnecessary_statements](https://dart.dev/tools/linter-rules/unnecessary_statements)
- [unrelated_type_equality_checks](https://dart.dev/tools/linter-rules/unrelated_type_equality_checks)

In addition, [avoid_void_async](https://dart.dev/tools/linter-rules/avoid_void_async) is escalated
to a **warning**.

## Excluded files

Analysis is disabled for native folders (`android`, `ios`), generated files and `assets`
folders.
