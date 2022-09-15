void main(List<String> args) {
  /* var funcionario = Funcionario(); */
  //ou
  Funcionario funcionario = Funcionario();

  print("\x1B[2J\x1B[0;0H");
  print(funcionario.nome);
  print(funcionario.idade);
  print(funcionario.salario.toStringAsFixed(2));
  print(funcionario.contaAtiva);
  funcionario.resgistrarPonto();
}

class Funcionario {
  String nome = "Rodrigo Oliveira";
  int idade = 43;
  double salario = 5000.00;
  bool contaAtiva = true;

  void resgistrarPonto() {
    print(DateTime.now());
  }
}
