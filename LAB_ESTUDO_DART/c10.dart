//Extension Methods (Classes)
void main(List<String> args) {
  print("rodrigo".capitalizar());
}

//Foi criado uma regra personalizada para deixar o primeiro caracter em
//maisculo
extension on String{
  capitalizar ()=> this.isEmpty ? this : '${this[0].toUpperCase()}${this.substring(1)}';
}
