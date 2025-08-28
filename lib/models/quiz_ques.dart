class QuizQues {
  QuizQues({required this.text, required this.anwsers});

  final String text;
  final List<String> anwsers;

  List<String> getShuffledAnwsers() {
    final shuffledLIst = List.of(anwsers);
    shuffledLIst.shuffle();
    return shuffledLIst;
  }
}
