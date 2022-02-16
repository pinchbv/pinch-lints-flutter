import 'package:example/foo.dart'; // ignore: prefer_relative_imports, custom rule for Pinch

void main() {
  const String _partOne = 'Hello';
  final String _partTwo = 'World'; // ignore: prefer_const_declarations
  final Foo _foo;

  print('$_partOne $_partTwo'); // ignore: avoid_print
}

abstract class Base {
  int methodA(int foo);
  String methodB(String foo);
}

class Sub extends Base {
  @override
  int methodA(int foo) => foo;

  @override
  String methodB(String bar) => bar; // ignore: avoid_renaming_method_parameters
}