class Class {
  var value;

  Class(this.value);

  factory Class.factoryConstructor1(value) {
    return value <= 10 ? Class(0) : Class(10);
  }

  static final List<Class> classes = [];
  factory Class.factoryConstructor2(value) {
    return classes.firstWhere((item) => item.value == value, orElse: () {
      print('Create new Class');
      classes.add(Class(value));
      return classes.last;
    });
  }
}

main() {
  print(Class.factoryConstructor1(15).value);

  print(Class.factoryConstructor2(0).value);
  print(Class.factoryConstructor2(1).value);
  print(Class.factoryConstructor2(0).value);
}