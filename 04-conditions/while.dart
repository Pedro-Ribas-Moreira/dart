void main() {
  var author = "Deep Thought";
  const question = "The Ultimate Question of Life";
  final answer;
  double timeToAnswer = 75e6;
  var bookAuthor;
  var mostIntelligent;
  int count = 0;

  List<dynamic> list = [
    author,
    question,
    answer = 42,
    'After calculating for ',
    timeToAnswer,
    ' years'
  ];

  while (count < 5) {
    if (count < 2) {
      mostIntelligent = "mice";
    } else if (count == 2 || count == 3) {
      mostIntelligent = "dolphin";
    } else {
      mostIntelligent = "human";
      bookAuthor = "Douglas Adams";
      print(bookAuthor);
    }
    print(mostIntelligent);
    count++;
  }
  do {
    print(count);
    count++;
  } while (count < 5);

  int newCount = 40;
  while (newCount < 50) {
    if (newCount != answer) {
      print("$newCount is not the answer!");
    } else {
      print("$answer is the answer to all!");
      break;
    }
    newCount++;
  }
}
