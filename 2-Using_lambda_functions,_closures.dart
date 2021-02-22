function1(arg, arg1) => (() => arg(arg1));

// Function() function1(Function arg, String arg1) => (() => arg(arg1));

// function2(arg, arg1) {
//   return () {
//     return arg(arg1);
//   };
// }

main() { // void main(List<String> args) {
  function2(arg) => arg + ' + Function from closure';

  var function3 = function1(function2, 'String from closure');

  print(function3());
  print(function3());
  print(function3);
}
