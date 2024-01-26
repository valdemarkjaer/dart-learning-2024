// List of Maps:
void main() {

  Map<String,int> marksIndividualStudent = {
    'Math':20,
    'English':20,
    'CS': 20,     // virgula nao eh necessaria, mas aqui eh ignorada.
  };
  // se tiver muitos alunos, fica dificil fazer um mapa pra cada um
  // solucao: list of maps

  List<Map<String,int>> marksOfAllStudents =[
    {'Math':20,
    'English':20,
    'CS': 20, },
    {'Math':40,
    'English':60,
    'CS': 80,},
    {'Math':10,
    'English': 70,
    'CS': 90,},
    marksIndividualStudent
  ];

  marksOfAllStudents.map((e) {
    print(e);
  }).toList();


    marksOfAllStudents.map((e) {
    e.forEach((key,val){print('$key : $val');});
  }).toList();

}
