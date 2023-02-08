import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("App with scaffold"),
      ),
      body: Center(
        child: Text(
          "The text in the center of body in the scaffold",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,

          ),
        ),
      ),
    ),
  ));
}

// // THE THREE BOX PLAYING
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("Row Widgets"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()]),
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: [SecondChild()]),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//             // Row(mainAxisAlignment: MainAxisAlignment.start, children: [ThirdChild()]),
//             // Row(mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()]),
//                 ThirdChild(),
//                 FirstChild(),
//             ]),
//
//         ],
//       ),
//       ),
//   ));
// }
//
// class FirstChild extends StatelessWidget {
//   const FirstChild({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: Colors.red,
//     );
//   }
// }
//
// class SecondChild extends StatelessWidget {
//   const SecondChild({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: Colors.green,
//     );
//   }
// }
//
// class ThirdChild extends StatelessWidget {
//   const ThirdChild({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: Colors.blue,
//     );
//   }
// }