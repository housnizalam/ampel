library dart_application_1;

export 'src/dart_application_1_base.dart';

void main() {
  Ample ample1 = Ample();
  Ample ample2 = Ample();
  Ample ample3 = Ample();
  Ample ample4 = Ample();
  Kruezung kruezung = Kruezung(ample1, ample2, ample3, ample4, false);
  kruezung.schalten;
  kruezung.schalten;
  kruezung.schalten;

  kruezung.schalten;
}

class Ample {
  bool grean = false;
  bool yellow = false;
  bool red = false;
  bool redYellow = false;
  bool clickedYellow = false;
  bool nacht = false;
  String walkerAmple = "Red";
  String walkerAmple2 = "Red";

  int counter = 0;
  int counter2 = 2;
}

class Kruezung {
  Ample ample1 = Ample();
  Ample ample2 = Ample();
  Ample ample3 = Ample();
  Ample ample4 = Ample();
  bool nacht = false;

  Kruezung(this.ample1, this.ample2, this.ample3, this.ample4, this.nacht);
  String get schalten {
    String zustand1;
    String zustand2;
    if (ample1.counter == 4) {
      ample1.counter = 0;
    }
    if (ample2.counter2 == 4) {
      ample2.counter2 = 0;
    }
    List<String> zustanden = ["grean", "yellow", "red", "redYellow"];
    List ample1States = [
      ample1.grean,
      ample1.yellow,
      ample1.red,
      ample1.redYellow
    ];
    List ample2States = [
      ample2.grean,
      ample2.yellow,
      ample2.red,
      ample2.redYellow
    ];
    zustand1 = zustanden[ample1.counter];
    zustand2 = zustanden[ample2.counter2];

    ample1States[ample1.counter] = true;
    ample2States[ample2.counter2] = true;

    zustand1 == "red"
        ? ample1.walkerAmple = "Green"
        : ample1.walkerAmple = "Red";
    zustand2 == "red"
        ? ample2.walkerAmple2 = "Green"
        : ample2.walkerAmple2 = "Red";
    ample1.counter++;
    ample2.counter2++;

    if (nacht) {
      ample1.clickedYellow = true;
      ample2.clickedYellow = true;
      String result =
          "CarsAmple1 : clickedYellow is ${ample1.clickedYellow} and WalkersAmple1 is grean/CarsAmple2 : clickedYellow is ${ample2.clickedYellow} and WalkersAmple2 is grean";
      print(result);
      return result;
    }
    String result =
        "CarsAmple1 : $zustand1 is ${ample1States[ample1.counter - 1]} and WalkersAmple1 is ${ample1.walkerAmple} / CarsAmple2 : $zustand2 is ${ample2States[ample2.counter2 - 1]} and WalkersAmple2 is ${ample2.walkerAmple2}";
    print(result);
    return result;
  }
}
// this.grean, this.yellow, this.red, 