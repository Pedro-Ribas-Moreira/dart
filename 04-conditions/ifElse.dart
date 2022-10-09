void main() {
  var author = "Deep Thought";
  const question = "The Ultimate Question of Life";
  final answer;
  double timeToAnswer = 75e6;

  List<dynamic> list = [
    author,
    question,
    answer = 42,
    'After calculating for ',
    timeToAnswer,
    ' years'
  ];

  if (answer != 42) {
    print("wrong answer!");
  } else {
    print("the answer for the ultimate question of life is: $answer");
    print("said " + list[0]);
  }
}
