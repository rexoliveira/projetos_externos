//extends / override (Class)

abstract class Pessoa {
  final String nome;

  Pessoa(this.nome);

  String pesquisar(String pesquisa) {
    return "Nome: $nome... $pesquisa";
  }
}

class Cliente extends Pessoa {
  final String email;
  Cliente(String nome, this.email) : super(nome);
}

class Paciente extends Pessoa {
  final String numeroCarteirinha;
  Paciente(String nome, this.numeroCarteirinha) : super(nome);

  @override
  String pesquisar(String pesquisa) {
    /* return super.pesquisar(pesquisa); */
    /* return super.pesquisar("..."); */

    final valor = super.pesquisar(pesquisa) + "Paciente";
    return valor;
  }
}

void main(List<String> args) {
  final cliente = Cliente("Pedro", "pedro@gmail.com");
  final paciente = Paciente("Fabio", "1235264789rr");

  /* print(cliente is Pessoa);
  print(paciente is Pessoa); */
  print("\x1B[2J\x1B[0;0H");
  print("1================================================");
  print(cliente.nome);
  print(cliente.pesquisar("Banco..."));
  print(paciente.nome);
  print(paciente.pesquisar("Hospital..."));
}
