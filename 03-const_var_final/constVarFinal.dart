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

  print(list);
  print(author.runtimeType);
}
