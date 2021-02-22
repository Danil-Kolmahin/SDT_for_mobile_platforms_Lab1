function(arg) => arg + ' + Function from closure';
function1(arg, arg1) => (() => arg(arg1));

// Function(void) function2(Function arg, String arg1) => ((void nullArg) => arg(arg1));

// function1(arg, arg1) => (() {
//       return arg(arg1);
//     });

main() {
  // void main(List<String> args) {
  var function2 = function1(function, 'String from closure');
  print(function2());
  print(function2());
  // print(function2);
}
