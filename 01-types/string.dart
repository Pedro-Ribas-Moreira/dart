void main() {
  String paragraph =
      "You know, said Arthur, it's at times like this, when I'm trapped in a Vogon airlock with a man from Betelgeuse, and about to die of asphyxiation in deep space that I really wish I'd listened to what my mother told me when I was young."
      "Why, what did she tell you? I don't know, I didn't listen.";

  String partOne = '"You know"';
  String partTwo =
      '"It`s at times like this, when I`m trapped in a Vogon airlock with a man from Betelgeuse, \n and about to die of asphyxiation in deep space that I really wish I`d listened to what my mother told me when I was young"';
  String partThree = '"Why, what did she tell you?".';
  String partFour = '"I don`t know, I didn`t listen."';

  String text = '$partOne, said Arthur.\n'
      '$partTwo \n'
      '$partThree \n'
      '$partFour \n';

  print(text);
  print(paragraph);
}
