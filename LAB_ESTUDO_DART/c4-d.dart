//Construtor Default, Nomeado, Redirecionado, super, this e factory (Classes)

class Cliente {
  late String nome;
  late String sobrenome;
  late String nomeCompleto;

  /* Cliente(this.nome, this.sobrenome):nomeCompleto ="$nome $sobrenome"; */
  /* Cliente(String nome, String sobrenome):nomeCompleto ="$nome $sobrenome"; */
  Cliente(String nome, String sobrenome)
      : nome = nome,
        sobrenome = sobrenome,
        nomeCompleto = "$nome $sobrenome";
}

void main(List<String> args) {
  final cliente = Cliente("Felipe", "Silva");

  print("\x1B[2J\x1B[0;0H");
  print("1================================================");
  assert(cliente.nomeCompleto == "Felipe Silva");
}
