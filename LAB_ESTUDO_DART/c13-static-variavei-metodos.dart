//Variáveis e métodos de Classe (Classes)🤔

class Produto {
  String descricao;

  Produto(this.descricao);

  void calculaPreco() {
    //...
  }
}

//Metodos ESTATICOS não precisam de uma instancia para serem usados
class Formatador {
  static int limiteDeCaracteres = 12;
  static void formatar(String text) {}
}

void main(List<String> args) {
  final produto = Produto('TV');
  //Propriedade e metodos de uma INSTANCIA
  produto.descricao;
  produto.calculaPreco();

  //Propriedade e metodos de uma CLASSE
  Formatador.limiteDeCaracteres;
  Formatador.formatar(produto.descricao);
}
