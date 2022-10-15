void main() {
  print("What is the Ultimate Question of Life, the Universe, and Everything?");
  funcRecursive(0, 42);
}

funcRecursive(int count, int stopCondition) {
  print("hmmm... calculating...");
  if (count >= stopCondition) {
    print("the answer is... 42.");
    return;
  }
  funcRecursive(count + 1, stopCondition);
}
