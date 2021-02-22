class Class {
  var value;
  Class(this.value) {
    // this.value = value;
  }
}

main() {
  Class(10)
    ..value = 0
    ..value = 5;

  // var classInstance = Class(10)
  // classInstance.value = 0;
  // classInstance.value = 5;

  var nullValue;

  nullValue?.method(); // ?.method()?.method();
  // ((v) => v == null ? null : v.method())(nullValue);

  nullValue ?? 'notNullValue';
  // ((v) => v == null ? 'notNullValue' : v)(nullValue);
  print(nullValue);

  nullValue ??= 'notNullValue';
  // nullValue = ((v) => v == null ? v = 'notNullValue' : v)(nullValue);
  print(nullValue);

  var list = [1, 2];
  list = [...list]; //spread operator
  list = [...?list]; //null-aware spread operator
  list = [if (true) 3]; //colection if
  list = [for (var v in list) v + 1]; //colection for

  print('0' is String);
  // print('0'.runtimeType == String);

  print(0 is! String);
  // print(0.runtimeType != String);
}
