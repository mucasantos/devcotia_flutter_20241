import 'package:devnoite_quiz/quiz_app/model/question.dart';

class QuizController {
  //o underline o identifica como private

  int _questionNumber = 0;
  int _userPoints = 0;

  // Lista de questões
  final List<Question> _questions = [
    Question(
        questionAns: false,
        questionText:
            "A construção da Torre Eiffel foi concluída em 31 de março de 1887"),
    Question(
        questionAns: false,
        questionText:
            "O relâmpago é visto antes de ser ouvido porque a luz viaja mais rápido que o som."),
    Question(
        questionAns: false, questionText: "A Cidade do Vaticano é um país."),
    Question(
        questionAns: false,
        questionText: "Melbourne é a capital da Austrália."),
    Question(
        questionAns: false,
        questionText:
            "A penicilina foi descoberta no Vietnã para tratar a malária."),
    Question(
        questionAns: false,
        questionText: "Os gatos não gostam do dono, e sim da casa."),
  ];

//pega pontos do user
  String getUserPoints() {
    return _userPoints.toString();
  }

  void setUserPoints() {
    _userPoints++;
  }

//Método para pegar a minha questão

  String getQuestion() {
    return _questions[_questionNumber].questionText;
  }

  //Pegar questão certa

  bool getCorrectAns() {
    return _questions[_questionNumber].questionAns;
  }

//Valida pode incrementar o num da questão
  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  bool hasFinished() {
    //clean Code option
    return _questionNumber >= _questions.length - 1;
    /*
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
    */
  }

  void reset() {
    _questionNumber = 0;
  }
}
