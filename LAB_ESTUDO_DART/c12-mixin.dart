//Mixins (Classes)

class Pessoa {
  final String nome;
  Pessoa(this.nome);

  // getters and setters
  // metodos do negocio
}

class Cliente extends Pessoa {
  bool ativo;

  Cliente(String nome, bool ativo)
      : this.ativo = ativo,
        super(nome);

  // getters and setters
  // metodos do negocio

}

//Permite que duas instencias que tem metodos em comun o compartilhe
mixin Abastecer {
  void abastecer() {
    print("Prateleira abastecida!");
  }
}

//with Abastecer - Implementa o metodo "mixin Abastecer" a classe
class Funcionario extends Pessoa with Abastecer {
  String cargo;

  Funcionario(String nome, String cargo)
      : this.cargo = cargo,
        super(nome);

  // getters and setters
  // metodos do negocio
}

//with Abastecer - Implementa o metodo "mixin Abastecer" a classe
class Fornecedor extends Pessoa with Abastecer {
  String empresa;

  Fornecedor(String nome, String empresa)
      : this.empresa = empresa,
        super(nome);

  // getters and setters
  // metodos do negocio
}

void main(List<String> args) {
  // ignore: unused_local_variable
  final pessoa = Pessoa("Rodrigo");
  // ignore: unused_local_variable
  final cliente = Cliente("Pedro", true);
  final funcionario = Funcionario("Rafael", "Gerente");
  final fornecedor = Fornecedor("Pedro", "Pedro & Cia");

  //Metodos em comun cria-se um "MIXIN"
  fornecedor.abastecer();
  funcionario.abastecer();
}
