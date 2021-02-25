function1(arg) => arg + ' + Function from closure';

// String function1(String arg) => arg + ' + Function from closure';

// function1(arg) {
//   return arg + ' + Function from closure';
// }

main() {
  // void main(List<String> args) {
  function2(arg, arg1) => (() => arg(arg1));
  // function2(arg, arg1) {
  //   return () {
  //     return arg(arg1);
  //   };
  // }
  var function3 = function2(function1, 'String from closure');

  print(function3());
  print(function3());
  print(function3);
}
