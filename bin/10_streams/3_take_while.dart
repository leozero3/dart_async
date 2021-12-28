Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.takeWhile((int numero) => numero < 10);
  //await for
  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
