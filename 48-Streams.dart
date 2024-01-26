import 'dart:async';

void main() async {
  // Streams. Solicita uma "inscricao" para um evento. Quando atualiza o evento, recebe a notificacao
  print(await countDown().first);
  countDown().listen((val){print(val);},
                    onDone: (){
                      print('Completo');
                    },); // listen faz uma subscripcao de stream.

    countDown2();
}

Stream<int> countDown() async* { //async* significa Stream. Async sem * = future
  for(int i=5; i>0; i--) {
    yield i; // yield = provide. Yield vai prover um valor de cada vez
    await Future.delayed(Duration(seconds: 1));
  }
}

void countDown2() {
  final controller = StreamController<int>();
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.addError('Hey! Error!');

  controller.stream.listen((val){
    print(val);}, onError: (err) {
    print(err);
  });

  controller.close();
}
