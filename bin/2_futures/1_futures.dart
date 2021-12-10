void main() {
  print('inicio do P1');
  processo2();
  processo3().then((mensagem) => print(mensagem));
  processo4().then((mensagem) => print('Mensagem do P4 $mensagem'),
      onError: (error) {
        print('Tratando o erro pelo OnError do Then');
      });

  processo4().then((mensagem) => print('Mensagem do P4 $mensagem'))
  .catchError((erro) => print('erro ao executar o processo 4'));

  print('fim do P1');
}

Future<void> processo2() async {
  print('inicio P2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 5) {
      print(i);
      i++;
    }
    print('fim P2');
  });
}

Future<String> processo3() {
  print('inicio P3');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P3');
}

Future<String> processo4() {
  print('inicio P4');
  return Future.delayed(Duration(seconds:3), () => throw Exception());
}