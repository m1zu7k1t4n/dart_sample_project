import 'dart:html';

// main is the function called when you execute your app
void main() {
  querySelector("#button").onClick.listen(getSum);
}

// The mouse event info is sent, but not used yet
void getSum(MouseEvent event) {
  // Get the value stored in element with the id num1, convert it from
  // a string and into an int and save it to a variable
  int num1 = int.parse((querySelector("#num1") as InputElement).value);
  int num2 = int.parse((querySelector("#num2") as InputElement).value);

  // Add 2 ints and convert them into a string
  var sum = (num1 + num2).toString();

  // Get the element with the id sum and assign it the string
  // String interpolation is used to add variable values
  querySelector("#sum").text = "${num1} + ${num2} = ${sum}";
}
