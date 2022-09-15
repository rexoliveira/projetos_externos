//Genérics em funções (Generics)

T getUltimoElemento<T>(List<T> items) {
  //Retorna o último elemento da LISTA
  return items.last;
}

void main(List<String> args) {
  print(getUltimoElemento<int>([0, 1, 2]));
  print(getUltimoElemento<String>(["Rodrigo", "Pedro", "Rafael"]));
}
