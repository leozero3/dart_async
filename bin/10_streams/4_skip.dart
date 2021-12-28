Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5).skip(2); //skip serve para pular a quantidade de numeros desejados no inicio
  //await for
  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
