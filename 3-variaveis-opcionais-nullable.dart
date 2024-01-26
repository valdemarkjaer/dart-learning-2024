void main () {
  // variaveis nullable = variaveis opcionais
  // somente String/bool/int/double podem ser nullable
  
  String? textoNullable = null;
  int? intNullable = null;
  double? doubleNullable = null;
  bool? boolNullable = null;
  
  //outra forma de declarar variavel null é só colocar ? sem null:
  
  String? textoNullable2;
  int? intNullable2;
  double? doubleNullable2;
  bool? boolNullable2;
  
  /* essas variaveis nao podem ser nullable:
   
     var? varNullable = null;
     dynamic? dynamicNullable = null;
     final? finalNullable = null;
     const? constNullable = null; */
  
  // vamos brincar com variavel que o sistema nao saberá dizer se
  // está null ou não antes de compilar/executar:
  
  String? textoNullable3 = 'Olá mundo!';
  print (textoNullable3.length);
  textoNullable3 = null;
  
  // Isso gera erro: print (textoNullable3.lenght);
  // faltou um ? antes do .
  
  print(textoNullable3?.length);
    //precisa ter um ? para o
    //compilador dizer que eh null
  
  // aqui abaixo textoNullable3 = null
  print(textoNullable3?.length??'não quero que o usuário leia null, mas, sim, que ele leia essa frase');
  print(textoNullable3?.length??0);
  
  textoNullable3 = 'Tem texto agora';
  print (textoNullable3?.length??'Não tem texto agora');
  // print (textoNullable!.length??'Aqui deve dar erro'); -> gera erro mesmo
  textoNullable3 = 'null';
  print (textoNullable3!.length??'Vamos ver no que dá essa loucura do ! em variável com null');
}
