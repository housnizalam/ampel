// library dart_application_1;

// export 'src/dart_application_1_base.dart';

// void main() {
//   Ample ample1 = Ample();
//   Ample ample2 = Ample();
//   Ample ample3 = Ample();
//   Ample ample4 = Ample();

//   ample2.nacht = true;
//   ample1.nacht = false;

//   ample1.schaltenOdd;
//   ample2.schaltenEven;
//   ample1.schaltenOdd;
//   ample2.schaltenEven;
//   ample1.schaltenOdd;
//   ample2.schaltenEven;
//   ample1.schaltenOdd;
//   ample2.schaltenEven;
// }

// class Ample {
//   bool grean = false;
//   bool yellow = false;
//   bool red = false;
//   bool redYellow = false;
//   bool clickedYellow = false;
//   bool nacht = false;
//   String walkerAmple = "Red";
//   int counter = 0;
//   int counter2 = 2;

//   String get schaltenOdd {
//     String zustand;
//     if (counter == 4) {
//       counter = 0;
//     }
//     List<String> zustanden = ["grean", "yellow", "red", "redYellow"];
//     List ampleStates = [grean, yellow, red, redYellow];
//     zustand = zustanden[counter];
//     ampleStates[counter] = true;
//     zustand == "red" ? walkerAmple = "Green" : walkerAmple = "Red";
//     counter++;
//     if (nacht) {
//       clickedYellow = true;
//       print(
//           "CarsAmple : clickedYellow is $clickedYellow and WalkersAmple is grean");
//       return "CarsAmple : clickedYellow is $clickedYellow and WalkersAmple is grean";
//     }
//     print(
//         "CarsAmpleEven : $zustand is ${ampleStates[counter - 1]} and WalkersAmple is $walkerAmple");
//     return "CarsAmpleEven : $zustand is ${ampleStates[counter - 1]} and WalkersAmple is $walkerAmple";
//   }

//   String get schaltenEven {
//     String zustand;
//     if (counter2 == 4) {
//       counter2 = 0;
//     }
//     List<String> zustanden = ["grean", "yellow", "red", "redYellow"];
//     List ampleStates = [grean, yellow, red, redYellow];
//     zustand = zustanden[counter2];
//     ampleStates[counter2] = true;
//     zustand == "red" ? walkerAmple = "Green" : walkerAmple = "Red";
//     counter2++;
//     if (nacht) {
//       clickedYellow = true;
//       print(
//           "CarsAmple : clickedYellow is $clickedYellow and WalkersAmple is grean");
//       return "CarsAmple : clickedYellow is $clickedYellow and WalkersAmple is grean";
//     }
//     print(
//         "CarsAmpleOdd : $zustand is ${ampleStates[counter2 - 1]} and WalkersAmple is $walkerAmple");
//     return "CarsAmpleOdd : $zustand is ${ampleStates[counter2 - 1]} and WalkersAmple is $walkerAmple";
//   }
// }
// // this.grean, this.yellow, this.red, 