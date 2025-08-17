// import 'package:flutter/material.dart';
// import 'package:toast/toast.dart';
//
// class Practice4 extends StatefulWidget {
//   const Practice4({super.key});
//
//   @override
//   State<Practice4> createState() => _Practice4State();
// }
//
// class _Practice4State extends State<Practice4> {
//   @override
//   Widget build(BuildContext context) {
//     ToastContext().init(context);
//     return Scaffold(
//         appBar: AppBar(
//         title: Text("Practice4",style: TextStyle(
//         fontSize: 30,color: Colors.deepPurple
//     ),),
//     centerTitle: true,
//     backgroundColor: Colors.yellow,
//     ),
//
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 20,
//               ),
//               InkWell(
//                 onTap: (){
//                   print("Click Me");
//                   int a = 5;
//                   int b = 7;
//                   int c = a+b;
//                   // Toast.show("Click Me", duration: Toast.lengthLong);
//                   Toast.show("Addition = $c", duration: Toast.lengthLong);
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 200,
//                   color: Colors.green,
//                   child: Center(
//                     child: Text("Click Me",style: TextStyle(
//                         fontSize: 30
//                     ),),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               InkWell(
//                 onTap: () {
//                   Toast.show("home1", duration: Toast.lengthLong);
//                 },
//                 child: Container(
//                     width: double.infinity,
//                     height: 450,
//                     child: Image.asset("assets/images/home1.jpg")),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                   width: double.infinity,
//                   height: 600,
//                   child: Image.asset("assets/images/home2.jpg")),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class Practice4 extends StatelessWidget {
//   const Practice4({super.key});
//
//   // List of image paths
//   final List<String> imageList = const [
//     'assets/images/home1.jpg',
//     'assets/images/home2.jpg',
//     'assets/images/home3.jpg',
//     'assets/images/home4.jpg',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Image List Scroll',
//           style: TextStyle(fontSize: 25, color: Colors.deepPurple),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.yellow,
//       ),
//       body: ListView.builder(
//         itemCount: imageList.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(10),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(15),
//               child: Image.asset(
//                 imageList[index],
//                 height: 250,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Practice4 extends StatelessWidget {
  const Practice4({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/home1.jpg',
      'assets/images/home2.jpg',
      'assets/images/home3.jpg',
      'assets/images/home4.jpg',
      'assets/images/home1.jpg',
      'assets/images/home2.jpg',
      'assets/images/home3.jpg',
      'assets/images/home4.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Image List Scroll",
          style: TextStyle(fontSize: 25, color: Colors.deepPurple),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageList[index],
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}