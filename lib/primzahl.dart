void main() {
  print('Zahl   teilbar duch   primzahl? ');

  primZahltest(88);
}

void primZahltest(zahl) {
  // damit ich das gegebene Zahl am ende erreichen kann
  final oldZahl = zahl;
  // auf 0 und 1 brauch ich nicht zu teilen
  int i;
  bool isPrimeZahl = true;
  List teilbarDurch = [];
  String check = 'ja';
  //fals das gegebene Zahl 2 oder 1 oder 0 oder negative ist
  if (zahl == 0) {
    print('0     [alle Zahlen]    ja');
    return;
  }
  if (zahl > 3) {
    i = 2;
    while (i <= zahl) {
      if (zahl % i == 0) {
        zahl /= i;
        teilbarDurch.add(i);
        isPrimeZahl = false;
        i = 1;
        check = 'nein';
      }
      i++;
    }
  }
  if (zahl < -3) {
    i = -2;
    while (i >= zahl) {
      if (zahl % i == 0) {
        zahl /= i * (-1);
        teilbarDurch.add(i);
        isPrimeZahl = false;
        check = 'nein';
        i = -1;
      }
      i--;
    }
  }

  print('$oldZahl      $teilbarDurch    $check\n _______________________________________');
}
