 void main() {
   print('Iniciou o processo');
   m2();
   p2();
   print('finalizou');
 }
 void m2(){
  print('função 2');
 }

 void p2(){

  Future.delayed(Duration(seconds: 2),(){
    print('p2 sendo executado');
  });


 }