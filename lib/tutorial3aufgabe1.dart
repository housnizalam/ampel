library dart_application_1;

export 'src/dart_application_1_base.dart';

void main() {
  Ample ampleNS = Ample(0);
  Ample ampleOW = Ample(2);
  Ample ampleSN = Ample(0);
  Ample ampleWO = Ample(2);
  List<Ample> amplesList = [ampleNS, ampleOW, ampleSN, ampleWO];
  AmpleManager amplesSchalten = AmpleManager(amplesList);
  // for (int i = 0; i < 4; i++) {
  //   print("Situation : ${i + 1}");
  //   amplesSchalten.schalten();
  // }
  var a = Ample(0);
  var b = a;
  var c = Ample(0);
  a = c;
  // a.click();
  // a.click();
  // print(b.actuellLampState);
  // print(c.actuellLampState);
  var aufgabe3 = Aufgabe3();
  aufgabe3.clickedAmple();



  
}

class Ample {
  int indexOfLampeStates;

  Ample(this.indexOfLampeStates);

  String actuellLampState = "red";
  List lampeStates = ["red", "redYellow", "green", "yellow"];

  void click() {
    // there is just 4 states
    if (indexOfLampeStates > 3) {
      indexOfLampeStates = 0;
    }
    actuellLampState = lampeStates[indexOfLampeStates];
    print(actuellLampState);
    // getting the next state
    indexOfLampeStates++;
  }
}

class AmpleManager {
  List<Ample> amplesList;
  AmpleManager(this.amplesList);
  void schalten() {
    for (var ample in amplesList) {
      ample.click();
    }
  }
}

class Aufgabe3 {
  int indexOfLampeStates = 0;
  String actuellLampState = "red";
  List lampeStates = ["red", "yellow", "green"];
  void clickedAmple() {
    while (indexOfLampeStates < 100) {
      actuellLampState = lampeStates[indexOfLampeStates % 3];
      print(actuellLampState);
      indexOfLampeStates++;
    }
  }
}



// ampleNS.click();
  // ampleOW.click();
  // ampleSN.click();
  // ampleWO.click();

  // print("${identityHashCode(ample1)}");
//   var a1 = ample1;
//   var a2 = a1;
//  print("${a1 == a2}");
//    a1 = Ample(0);
  // print("${a1 == a2}");
  // print("${identityHashCode(a1)}");
  // print("${identityHashCode(a2)}");