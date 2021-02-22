function(arg, [arg1 = 0]) => arg1; // Positional, optional, default parameters
// @required
// const Scrollbar({Key key, @required Widget child})
function1(arg, {arg1}) => arg1; // Named parameters

main() {
  print(function(1));
  print(function(1, 5));
  print(function1(1));
  print(function1(1, arg1: 5));
}
