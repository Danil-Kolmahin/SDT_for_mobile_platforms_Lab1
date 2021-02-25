function1(arg, [arg1 = 0]) => arg1; // Positional, optional, default parameters

function2(arg, {arg1, arg2}) => arg1; // Named parameters

// import 'package:flutter/material.dart';
// function2({@required arg}) => arg; // Named non-optional parameters
main() {
  print(function1(1));
  print(function1(1, 5));
  print(function2(1));
  print(function2(1, arg2: 2, arg1: 5));
}
