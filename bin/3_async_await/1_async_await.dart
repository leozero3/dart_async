Future<void> main() async {
  print('Inicio do main');
  var mensagem = await processo1();
  print('mensagem é $mensagem');
  try {
    await processo2();
  } on Exception catch (erro) {
    print(erro);
  }

  print('Fim do main');
}

Future<String> processo1() {
  print('Inicio P1');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do Processo P1');
}

Future<String> processo2() {
  print('Inicio P2');
  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}
