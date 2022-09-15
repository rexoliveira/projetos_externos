//Construtor Default, Nomeado, Redirecionado, super, this e factory (Classes)

class Cliente {
  late String nome;
  late String sobrenome;

  Cliente(this.nome, this.sobrenome);
  Cliente.nome(String nome):this(nome, "Silva");
}

void main(List<String> args) {
  final cliente = Cliente.nome("Felipe");

  print("\x1B[2J\x1B[0;0H");
  print("1================================================");
  assert(cliente.nome == "Felipe");
  assert(cliente.sobrenome == "Silva");
}
