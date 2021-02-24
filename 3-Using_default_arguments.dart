function(arg, [arg1 = 0]) => arg1; // Positional, optional, default parameters

function1(arg, {arg1}) => arg1; // Named parameters

// import 'package:flutter/material.dart';
// function2({@required arg}) => arg; // Named non-optional parameters
main() {
  print(function(1));
  print(function(1, 5));
  print(function1(1));
  print(function1(1, arg1: 5));
}
