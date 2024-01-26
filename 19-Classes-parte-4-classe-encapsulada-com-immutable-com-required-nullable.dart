void main() {

//  Construtores de classes Immutable, com required e nullable

  BiscoitoEncapsulado1 biscoito1A = BiscoitoEncapsulado1 ('Oval', 89);

  BiscoitoEncapsuladoNullable2 biscoito2A = BiscoitoEncapsuladoNullable2 (formato: 'redondo', tamanho: 100.1);
  BiscoitoEncapsuladoNullable2 biscoito2B = BiscoitoEncapsuladoNullable2 (formato: null, tamanho: null);

}

class BiscoitoEncapsulado1 {
  final String formato; // variaveis impossiveis de mudar a partir de fora
  final double tamanho;
  BiscoitoEncapsulado1(this.formato, this.tamanho){

     // inicializa parametros posicionais.
     // como consegue inicializar as variaveis formato e tamanho se sao declaradas
     // de tipo final? Somente o construtor faz isso.
     // essas variaveis soh podem ser acessadas por metodos da propria funcao. nao
     // eh possivel mudar as variaveis diretamente a partir de fora do objeto/classe

    print('biscoito criado com formato ${this.formato} e tamanho ${this.tamanho}');
  }

  // metodos
  void assando() => print('assando o biscoito');
  bool estaEsfriando() => false;

  /* em funcao fat arrow, nao pode ter return antes do false, porem, se fosse
     funcao normal, com { }, então tem de botar return:
     bool estaEsfriando() {
     return false;
     }
  */
}

class BiscoitoEncapsuladoNullable2 {
  final String? formato; // variaveis impossiveis de mudar a partir de fora
  final double? tamanho;
  BiscoitoEncapsuladoNullable2({required this.formato, required this.tamanho}){

     // inicializa parametros declarativos e required
     // como consegue inicializar as variaveis formato e tamanho se sao declaradas
     // de tipo final? Somente o construtor faz isso.
     // essas variaveis soh podem ser acessadas por metodos da propria funcao. nao
     // eh possivel mudar as variaveis diretamente a partir de fora do objeto/classe

    print('biscoito criado com formato ${this.formato} e tamanho ${this.tamanho}');
  }

  // metodos
  void assando() => print('assando o biscoito');
  bool estaEsfriando() => false;

  /* em funcao fat arrow, nao pode ter return antes do false, porem, se fosse
     funcao normal, com { }, então tem de botar return:
     bool estaEsfriando() {
     return false;
     }
  */
}
