class IMCCalculator {
  IMCCalculator({
    required this.altura,
    required this.peso,
  });

  final int altura;
  final int peso;

  double _imc = 0.0;

  String calculaIMC() {
    _imc = altura / (peso ^ 2);
    return _imc.toStringAsFixed(1);
  }

  //Criar método que retorna o resultado

  String getResultado() {
    if (_imc >= 25) {
      return 'Acima do peso';
    } else if (_imc > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  //Criar método para devolver o texto de acordo com o _imc

  String getTextResultado() {
    if (_imc >= 25) {
      return 'Acima do peso';
    } else if (_imc > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }
}
