// MIXIN
void main() {
  final anim = Animal ();
  anim.fn();

  final crianca = Crianca();
  crianca.fn();
   }

mixin Jump {
  int jumping = 10;
}

class Animal with Jump {
  void fn() {print(jumping);}

}

/* Mixin permite usar codigo sem estabelecer uma relacao parent-chil ou super-sub. Jump pode ser algo
 * a ser usado com seres humanos, maquinas etc. Em vez de criar uma super-super-super classe com Jump
 * lah no inicio pra poder usar a heranca, o mixin permite usar caracteristicas e acoes a qualquer momento
 * sem precisar ser de pai-filho. */
class Cat extends Animal {
  void func() {
    print(jumping); // a classe pai Animal tem um mixin com jump e isso permite a classe filha Cat usar tambme
;  }
}

mixin Scream {
  bool isScreaming = true;
}

class Crianca with Jump, Scream { // uma classe pode usar mais de um Mixin
  void fn() {
    print(jumping);
    print(isScreaming);
  }
}
