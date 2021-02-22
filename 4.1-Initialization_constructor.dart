class Class {
  var value;

  Class() {} // default constructor

  Class.nonDefault1(value)
      : assert(value <= 0),
        this.value = 10 {
    print(this.value);
  } // non-default constructor

  Class.nonDefault2(value) : this.nonDefault1(value);

  Class.nonDefault3(String value) : this.nonDefault1(int.parse(value));
}

class ClassExtender extends Class {
  ClassExtender() {}
}

testPrint(str) => print(str);

class Ancestor {
  var alwausNull;
  Ancestor() : alwausNull = testPrint('Ancestor initial constructor') {
    testPrint('Ansestor constructor'); // alwausNull
  }
}

class Heir extends Ancestor {
  var alwausNull;
  Heir() : alwausNull = testPrint('Heir initial constructor') // 0
  // , super()
  {
    testPrint('Heir constructor');
  }
}

main() {
  Class.nonDefault2(5);
  // Heir();
}
