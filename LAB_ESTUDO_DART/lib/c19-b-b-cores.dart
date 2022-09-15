part of 'c19-b-a-colored_letters.dart';

enum Cores {
  branco('\x1b[29m'),
  vermelho('\x1b[31m'),
  verde('\x1b[32m'),
  amarelo('\x1b[33m');

  const Cores(this.value);
  final String value;
}
