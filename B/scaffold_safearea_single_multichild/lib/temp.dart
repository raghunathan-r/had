// // WITHOUT SAFE AREA
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Text(
//       'Text without safe area',
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         fontSize: 40,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ));
// }

// ---

// WITH SAFEAREA
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: SafeArea(
//       child: Text(
//         'Text without safe area',
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: 40,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//   ));
// }

// ---

// // APP WITH SCAFFOLD
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("App with scaffold"),
//       ),
//       body: Center(
//         child: Text(
//             "The text in the center of body in the scaffold"
//         ),
//       ),
//     ),
//   ));
// }

// ---

// MULTI CHILD WIDGETS

// Exercise 1. Row widget main axis alignment

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("Row Widgets"),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           FirstChild(),
//           SecondChild(),
//           ThirdChild(),
//         ],
//       ),
//     ),
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


// Exercise - 2. Columns and row main and cross axis alignment

// // BOXES DIAGONALLY
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text("Singel Multichild Scaffold"),),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(children: [firstChild()], mainAxisAlignment: MainAxisAlignment.start,),
//           Row(children: [secondChild()], mainAxisAlignment: MainAxisAlignment.center,),
//           Row(children: [thirdChild()], mainAxisAlignment: MainAxisAlignment.end,),
//         ],
//       ),
//     ),
//   ));
// }

// BOXES ONE AFTER ANOTHER WITH EVEN SPACE
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text("Singel Multichild Scaffold"),),
//       body: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           firstChild(), secondChild(), thirdChild()
//         ],
//       ),
//     ),
//   ));
// }

// BOXES DOWN OF EACH OTHER WITH SPACE
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text("Singel Multichild Scaffold"),),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           firstChild(), secondChild(), thirdChild()
//         ],
//       ),
//     ),
//   ));
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Row Widgets"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [SecondChild()]),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [ThirdChild()]),
        ],
      ),
    ),
  ));
}

class FirstChild extends StatelessWidget {
  const FirstChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
    );
  }
}

class SecondChild extends StatelessWidget {
  const SecondChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.green,
    );
  }
}

class ThirdChild extends StatelessWidget {
  const ThirdChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.blue,
    );
  }
}

// Expercise - 3 - The NEW ONE HE GAVE

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Row Widgets"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [SecondChild()]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Row(mainAxisAlignment: MainAxisAlignment.start, children: [ThirdChild()]),
                // Row(mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()]),
                ThirdChild(),
                FirstChild(),
              ]),

        ],
      ),
    ),
  ));
}

class FirstChild extends StatelessWidget {
  const FirstChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
    );
  }
}

class SecondChild extends StatelessWidget {
  const SecondChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.green,
    );
  }
}

class ThirdChild extends StatelessWidget {
  const ThirdChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.blue,
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("App with scaffold"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(90.0),
//         color: Colors.lightBlueAccent,
//         child: Text(
//             "The text in the center of body in the scaffold"
//         ),
//       ),
//     ),
//   ));
// }