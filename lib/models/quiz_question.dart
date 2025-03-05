class QuizQuestion {

  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getSheffledAnswers() {
    final sheffledList = List.of(answers);
    sheffledList.shuffle();
    return  sheffledList;
  }
}