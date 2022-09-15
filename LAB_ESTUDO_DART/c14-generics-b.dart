//Restringindo o tipo parametrizado (Generics)

class Produto {}
class Game extends Produto{}
class Tv extends Produto {}

class Cliente {}

//extends Produto - Restringe a somente Produto e seu filhos
class Carrinho<T extends Produto> {
  final List<T> items = [];

  void addItens(T item) {
    items.add(item);
  }
}

void main(List<String> args) {
  final carrinho = Carrinho<Produto>();

  carrinho.addItens(Produto());
  //Assim que foi definido <Produto> só aceita o tipo Produto e seus filhos
  // carrinho.addItens(Cliente());

  //Pode ser resolvido com uma herança [extends]
  carrinho.addItens(Game());
  carrinho.addItens(Tv());
}
