void main() {
 // break e continue em while, do-while e for

  String value = 'Hello!';

  print('for com continue:');
  for (int i = 0 ; i<value.length ; i++ ) {
    if(i==1 || i ==2 || i == 3) {continue;}
    print(value[i]);
  }
  print('');print('');

    print('for com break:');
  for (int i = 0 ; i<value.length ; i++ ) {
    if(i==1 || i ==2 || i == 3) {break;}
    print(value[i]);
  }
  print('');print('');



  int i = 0;

  do {
    print (value[i]);
    i++;
    if (i==3) {break;}
  } while (i<value.length);

}
