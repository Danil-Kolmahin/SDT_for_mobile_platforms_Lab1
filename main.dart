// 1) Оператори "синтаксичного цукру". Наприклад оператор "??="
var list = [1, 2];
var list2 = [...list]; //spread operator
var list4 = [...?list]; //null-aware spread operator
var list5 = [if (true) 9]; //colection if
var list6 = [for (var item in list) item + 1]; //colection for
var map2 = {'a': () => {}};

class Class2 {
  var integer = 1;
  method() => '$integer';
}

var classInstance = Class2()
..integer = 5;

// var string = map2.?a();
// as
// print('0' is String);
// print('0' is! String);
var a;
// a ??= 1;
// print(value ?? 'isNull'); === print(value == null ? 'isNull' : value);

// 2) Використання лямбда-функцій, замикань
function(args) => args;
function2(Function arg1, arg2) => (() => arg1(arg2));

// 3) Використання параметрів за замовчуванням
function3(arg1, [arg2 = 0]) =>
    arg2; // Позиционные, необязательные параметры, параметры по умолчанию
function4(arg1, {arg2}) => arg2; // Именованые параметры

// 4) Різні варіанти конструкторів:
//    4.1) Фабричний конструктор
//    4.2) Конструктор ініціалізації
class Class {
  // _private
  // final
  // static const
  var integer = 1;
  method() {
    return '$integer';
  }

  Class(this.integer);
  Class.fromString(String integer) {
    this.integer = int.parse(integer);
  }
  Class.fromString1(String integer) : this(int.parse(integer));
  factory Class.factoryClass(integer) {
    return integer <= 10 ? Class(0) : Class(10);
  }
}

var classInstance2 = Class(5);
var classInstance3 = Class.fromString1('6');
var classInstance4 = Class.factoryClass(11);

// 5) Використання міксинів
class Class3 with Mixin {
  var integer = 1;
  method() => '$integer';
}

mixin Mixin {
  method1() => 'integer';
}

// 6) Використання ключового слова assert
var list7 = [1, 2, 3];
// assert(list.length == 4);
// dart --enable-asserts main.dart

// 7) Робота з колекціями
var list3 = [1, 2];

var set = {1, 1, 2};
var map = {
  'a': 0,
  'b': 1,
};

void main(List<String> args) {
  // var function5 = function2(function, 'Value from closure');
  // print(function5());
  // print(function5());
  print(classInstance4.method());
  print(Class3().method1());
}

// 7) Робота з колекціями
// 2) Використання лямбда-функцій, замикань
// 3) Використання параметрів за замовчуванням
// 4) Різні варіанти конструкторів:
//    4.2) Конструктор ініціалізації
//    4.1) Фабричний конструктор 
// 5) Використання міксинів
// 6) Використання ключового слова assert
// 1) Оператори "синтаксичного цукру". Наприклад оператор "??="

// 1-Working_with_collections \/
// 2-Using_lambda_functions,_closures \/
// 3-Using_default_arguments \/

// 4-Different_constructors
  // 4.1-Initialization_constructor
  // 4.2-Factory_constructor \/

// 5-Using_mixins
// 6-Using_the_assert_keyword \/
// 7-Syntactic_sugar_operators \/