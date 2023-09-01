class QuizQuestion {
  final String question;
  final List<String> answers;
  const QuizQuestion(this.question, this.answers);
  List <String>getShuffledList() {
    final shuffleList = List.of(answers);
    shuffleList.shuffle();
    return shuffleList;
  }
}
