void reverseList(List<int> items) {
  // Create a stack to store the elements
  List<int> stack = [];

  // Push all elements onto the stack
  for (int item in items) {
    stack.add(item);
  }

  // Pop elements from the stack and print them
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}
  
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Original List: $numbers");
  print("Reversed List:");
  reverseList(numbers);

}
