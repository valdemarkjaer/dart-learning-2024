// EXCEPTION handling
void main(){

  try {
    print(10~/0);
  } catch(e) {
    print(e);
    print('Block catch executed');
  } finally {                            // bloco finally eh opcional. Ele eh executado com erro ou sem erro
    print('Block finally executed');
  }

  try {
    print(10~/0);
  } on FormatException catch(e) {
    print(e);
  } catch(e) {
    print('An error occurred');
  }


  print('Valdemar');
}
