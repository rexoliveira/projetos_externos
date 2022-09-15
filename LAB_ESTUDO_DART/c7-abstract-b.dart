//Abstract Class - Dúvida da Instância de uma classe Abstrata (Exception) 🤔
//Classe abstract NÃO pode ser instanciada, somente seu subproduto
abstract class MeuProduto {
  //factory - Permite criar um instancia de MeuProduto atraves da CLASSE Produto
  factory MeuProduto() => Produto2();
}

class Produto1 implements MeuProduto {}
class Produto2 implements MeuProduto {}

void main(List<String> args) {
  Exception;
}
