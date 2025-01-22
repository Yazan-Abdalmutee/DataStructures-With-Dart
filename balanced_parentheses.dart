bool areParenthesesBalanced(String str) {
  List<String> stack = [];

  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      stack.add('('); // Push to stack
    } else if (str[i] == ')') {
      if (stack.isEmpty) {
        return false; // Unbalanced if there is no matching  parenthesis
      }
      stack.removeLast(); // Pop  top of the stack
    }
  }

  return stack.isEmpty; // If stack is empty then parentheses are balanced
}

void main() {
  String input = "((yazan)and(shrouf))";
  print("Input: $input");
  print("balanced? ${areParenthesesBalanced(input)}");

  input = "(a + b))";
  print("\nInput: $input");
  print("balanced? ${areParenthesesBalanced(input)}");

  input = "((Ahmad)";
  print("\nInput: $input");
  print("balanced? ${areParenthesesBalanced(input)}");
}
