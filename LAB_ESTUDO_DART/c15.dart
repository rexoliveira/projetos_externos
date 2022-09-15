//Callable Classes 🧐
class Product {
  final String id;

  Product(this.id);

  @override
  String toString() {
    return 'Product: $id';
  }
}

class GetProductRepository {
  Future<Product> call(String id) {
    return Future.value(Product(id));
  }
}

void main(List<String> args) {
  final repository = GetProductRepository();

  // repository.call('1').then((value) => print(value));
  //Sem o call pode ser feita uma chamada como uma função
  repository('5').then(print);
}
