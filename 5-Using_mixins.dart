class Class with Mixin1, Mixin2 {
  var value = 1;
  method1() => '$value';
}

mixin Mixin1 {
  method2() => 'integer';
}

mixin Mixin2 on Mixin1 {
  method2() => 'double';
}

main() {
  print(Class().method1());
  print(Class().method2());
}