Future<void> main() async {

  var nomes = ['leo', 'amanda', 'isaac'];
  print('Inicio');


  await Future.forEach<String>(nomes, (nome) async {
    print(await saudacao(nome));
  });
  
  for(var nome in nomes){
    print( await saudacao(nome));
  }
  // nomes.forEach((nome)async {
  //   print(await saudacao(nome));
  // });

  print('Fim');
}

Future<String> saudacao(String nome){
  return Future.delayed(Duration(seconds:  1),()=> 'Ola $nome');
}