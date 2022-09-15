// ignore_for_file: public_member_api_docs, sort_constructors_first
//Implicit Interfaces - Tirando as duvidas de vez (Classes) 🥳️
//NÃO tem a palavra INTERFACE
//Elas herdam os tipos (extends/implements)
//Obrigado a implementar os metodo explicitos e propriedades
//classes abstratas com metodos abstratos OBRIGA a IMPLEMENTAÇÂO

class UserRepository {
  // ignore: unused_field
  late String _nome;

  void Loading(){
    //...
  }
  
}

class AddUserRepository implements UserRepository {
  @override
  // ignore: unused_field
  late String _nome;
  
  @override
  void Loading() {
  }

  
}

void main(List<String> args) {
  // ignore: unnecessary_type_check
  print(AddUserRepository() is UserRepository);
}
