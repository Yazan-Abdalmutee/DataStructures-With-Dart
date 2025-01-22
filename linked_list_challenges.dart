// Node class
class Node {
  int value;
  Node? next;

  Node(this.value);
}

// LinkedList class 
class LinkedList {
  Node? head;

  // Add a new value to the linked list
  void add(int value) {
    if (head == null) {
      head = Node(value);
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(value);
    }
  }

  // Print the linked list
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

// Challenge 1: Print in Reverse
void printInReverse(Node? node) {
  if (node == null) return;
  printInReverse(node.next);
  print(node.value);
}

// Challenge 2: Find the Middle Node
Node? findMiddleNode(Node? head) {
  if (head == null) return null;

  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }

  return slow;
}

// Challenge 3: Reverse a Linked List
Node? reverseList(Node? head) {
  Node? prev = null;
  Node? current = head;

  while (current != null) {
    Node? next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

// Challenge 4: Remove All Occurrences
Node? removeAllOccurrences(Node? head, int target) {
  // Remove occurrences at the head
  while (head != null && head.value == target) {
    head = head.next;
  }

  Node? current = head;

  while (current != null && current.next != null) {
    if (current.next!.value == target) {
      current.next = current.next!.next; // Skip the matching node
    } else {
      current = current.next; 
    }
  }

  return head;
}

// Main
void main() {
  LinkedList list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  list.add(2);

  print("Original list:");
  list.printList();

  // Challenge 1: Print in Reverse
  print("\nChallenge(1):List in reverse:");
  printInReverse(list.head);

  // Challenge 2: Find the Middle Node
  Node? middle = findMiddleNode(list.head);
  print("\nChallenge(2):Middle node: ${middle?.value}");

  // Challenge 3: Reverse the Linked List
  list.head = reverseList(list.head);
  print("\nChallenge(3):Reversed list:");
  list.printList();

  // Challenge 4: Remove All Occurrences of the number 2
  list.head = removeAllOccurrences(list.head, 2);
  print("\nChallenge(4):List after removing all occurrences of 2:");
  list.printList();
}
