//O fato de ser criado uma arrquivo em Dart é mesma coisa que criar uma
//Librarie;
//Pois todo arquivo é um escopo de uma Librarie;
// Vai ter um namespace para organizção

library colored_letters;

/* const cores = [
  '\x1b[31m',
  '\x1b[32m',
  '\x1b[33m',
]; */

enum Cores {
  branco('\x1b[29m'),
  vermelho('\x1b[31m'),
  verde('\x1b[32m'),
  amarelo('\x1b[33m');

  const Cores(this.value);
  final String value;
}

// void transform(String value, List<Cores> cores) {
  void transform(String value, [List<Cores> cores = const [Cores.branco]]) {
  final novoValue = value.toUpperCase();
  //final vermelho = '\x1b[31m';
  final fimCor = '\x1b[m';

  // String novoValueTransformado = '';

  StringBuffer novoValueTransformado = StringBuffer();

  int indexCor = 0;
  for (var i = 0; i < novoValue.length; i++) {
    if (indexCor == cores.length) {
      indexCor = 0;
    }

    final cor = cores[indexCor];
    //print(indexCor);
    //novoValueTransformado += '$cor${novoValue[i]}$fimCor';
    //'\x1b[m' -Reseta a cor para somente o primeiro print
    //Melhor pratica para concatenar Strings usando o StringBuffer
    // novoValueTransformado.write('$cor${novoValue[i]}$fimCor');
    novoValueTransformado.write('${cor.value}${novoValue[i]}$fimCor');

    indexCor++;
  }
  //Não precisa deixar explicito o "toString"
  print(novoValueTransformado.toString());
}
