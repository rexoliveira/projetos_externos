//Introdução (Generics)
//Ajuada na redução de código como o reuso

//Uma classe de CACHE - pode armazenar qualquer valor
abstract class ObjectCache {
  void setByKey(String key, Object value);
  Object? getByKey(String key);
}

//Uma classe de CACHE - pode armazenar Strings
//Deixiei meu tipo mais especifico e acabei duplicando código
abstract class StringCache {
  void setByKey(String key, String value);
  String? getByKey(String key);
}

//Resolve essa duplicação com GENERICS
//Pode por convenção usar as letras E,T,S,K e V
/* abstract class Cache<T> {
  void setByKey(String key, T value);
  T? getByKey(String key);
}

class Produto{}

class MyCache implements Cache<Produto>{
  @override
  Produto? getByKey(String key) {
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, Produto value) {
  } */

//Uma classe GENERICA
abstract class Cache<T, K> {
  void setByKey(K key, T value);
  T? getByKey(K key);
}

class Produto {}

class MyCache implements Cache<Produto, int> {
  @override
  Produto? getByKey(int key) {
    throw UnimplementedError();
  }

  @override
  void setByKey(int key, Produto value) {}
}
