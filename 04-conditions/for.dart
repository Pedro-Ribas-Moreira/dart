void main() {
  var author = "Deep Thought";
  const question = "The Ultimate Question of Life";
  final answer;
  double timeToAnswer = 75e6;
  var bookAuthor;

  List<dynamic> list = [
    author,
    question,
    answer = 42,
    'After calculating for ',
    timeToAnswer,
    ' years'
  ];

  for (int i = 0; i <= 5; i++) {
    print("thinking for $i years");
    if (i == 3) {
      bookAuthor = "Douglas Adams";
      print(bookAuthor);
    }
  }
  if (answer != 42) {
    print("wrong answer!");
  } else {
    print("the answer for the ultimate question of life is: $answer");
    print("said " + list[0]);
  }
}
