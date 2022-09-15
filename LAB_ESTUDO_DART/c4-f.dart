//Construtor Default, Nomeado, Redirecionado, super, this e factory (Classes)

class Funcionario {
  late String nome;

  Funcionario(this.nome);
  //factory - quando se tem a intenção de criar uma nova instancia OU
  //retornar uma instancia conforme um valor especifico como no EX abaixo:
  factory Funcionario.criarInstancia(String nome, String tipo) {
    if (tipo == "G") return Gerente(nome);
    if (tipo == "E") return Engenheiro(nome);
    return Funcionario(nome);
  }

 /*  @override
  String toString() {
    return nome;
  } */
}

class Gerente extends Funcionario {
  Gerente(String nome) : super(nome);
}

class Engenheiro extends Funcionario {
  Engenheiro(String nome) : super(nome);
}

void main(List<String> args) {
  print("\x1B[2J\x1B[0;0H");
  print("1================================================");
  print(Funcionario.criarInstancia( "Felipe", ""));
  print(Funcionario.criarInstancia( "Rodrigo", "G"));
  print(Funcionario.criarInstancia( "Douglas", "E"));
  print("2================================================");
  print(Funcionario.criarInstancia( "Felipe", "").nome);
  print(Funcionario.criarInstancia( "Rodrigo", "G").nome);
  print(Funcionario.criarInstancia( "Douglas", "E").nome);
}
