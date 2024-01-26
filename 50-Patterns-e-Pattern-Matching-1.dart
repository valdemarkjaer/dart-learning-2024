// Patterns & Pattern matching
void main() {

  final list1 = [1,2,3];
  final a1 = list1[2]; print('');

  print ('$a1');
  final [a,b,c] = list1;              // O RECORD [a,b,c] TEM PATTERN MATCHING COM LIST1, POR ISSO ACEITA
  print ('$a $b $c'); print('');

  final list3 = [1,2,3,4,5,6,7,8,9];
  // final [a,b,c] = list;    GERA ERRO DE PATTERN MATCHING. LIST TEM 10 ELEMENTOS E O RECORD TEM 3
  final[a3,b3,c3,...] = list3;     // aceita, mas nao gera as letras g,h,i,j,k,l - que era o que eu esperava!
  // print('$d $e $f $g $h $i $j $k $l');  // gera erro. Estranho... no fim, significa que o record tem
  // tres elementos e o resto eh desprezado. Os tres ... servem apenas para fazer o pattern matching, mas
  // nao definem as variaveis que faltam, as variaveis que estariam no lugar dos 3 ...
  // Os tres ... sao chamados de rest pattern
  print('$a3 $b3 $c3'); print('');

  final[a4, ... , c4, d4] = list3;
  print('$a4, $c4, $d4'); print(''); // pega o primeiro, pega os dois ultimos e o meio eh o resto.

  final[a5, b5,c5, ...d5] = list3; // o resto (elementos restantes) eh atribuido a d5 - perceba a notacao ...d5;
  print('$a5 $b5 $c5 $d5'); print('');

  // final[a6,...,b6,...,c6] = list3;   GERA ERRO. TRES ... (resto) SOH PODE SER USADO UMA VEZ

  final[a6,b6,...c6,d6,e6] = list3;
  print('$a6 $b6 $c6 $d6 $e6'); print('');

  final[a7, b7, _ , c7, d7, e7, ...] = list3; // UNDERSCORE EH IGNORADO, NAO ATRIBUI VALOR NENHUM
  // print('$_');   // $_ RETORNA ERRO, EH INDEFINIDO
}
