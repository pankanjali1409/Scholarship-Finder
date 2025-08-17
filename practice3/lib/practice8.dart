// import 'package:flutter/material.dart';
//
// class Practice8 extends StatefulWidget {
//   const Practice8({super.key});
//
//   @override
//   State<Practice8> createState() => _Practice8State();
// }
//
// class _Practice8State extends State<Practice8> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Practice 8",style: TextStyle(
//             fontSize: 30
//         ),),
//         centerTitle: true,
//       ),
      // body: Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   child: GridView.count(
      //       crossAxisCount: 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     padding: EdgeInsets.all(10),
      //     // children: List.generate(6, (index) {
      //     //   return Container(
      //     //     color: Colors.yellow,
      //     //     child: Center(child: Text("Item ${index + 1}",style: TextStyle(
      //     //       fontSize: 40
      //     //     ),),),
      //     //   );
      //     // },)
      //     // children: [
      //     //   Container(
      //     //     padding: EdgeInsets.all(10),
      //     //     color: Colors.purple,
      //     //     child: Center(
      //     //       child: Text("Item 1",style: TextStyle(
      //     //         fontSize: 40
      //     //       ),),
      //     //     ),
      //     //   ),
      //     //   Container(
      //     //     padding: EdgeInsets.all(10),
      //     //     color: Colors.purple,
      //     //     child: Center(
      //     //       child: Text("Item 2",style: TextStyle(
      //     //           fontSize: 40
      //     //       ),),
      //     //     ),
      //     //   ),
      //     //   Container(
      //     //     padding: EdgeInsets.all(10),
      //     //     color: Colors.purple,
      //     //     child: Center(
      //     //       child: Text("Item 3",style: TextStyle(
      //     //           fontSize: 40
      //     //       ),),
      //     //     ),
      //     //   ),
      //     //   Container(
      //     //     padding: EdgeInsets.all(10),
      //     //     color: Colors.purple,
      //     //     child: Center(
      //     //       child: Text("Item 4",style: TextStyle(
      //     //           fontSize: 40
      //     //       ),),
      //     //     ),
      //     //   ),
      //     //   Container(
      //     //     padding: EdgeInsets.all(10),
      //     //     color: Colors.purple,
      //     //     child: Center(
      //     //       child: Text("Item 5",style: TextStyle(
      //     //           fontSize: 40
      //     //       ),),
      //     //     ),
      //     //   ),
      //     //   Container(
      //     //     padding: EdgeInsets.all(10),
      //     //     color: Colors.purple,
      //     //     child: Center(
      //     //       child: Text("Item 6",style: TextStyle(
      //     //           fontSize: 40
      //     //       ),),
      //     //     ),
      //     //   ),
      //     //   Container(
      //     //     padding: EdgeInsets.all(10),
      //     //     color: Colors.purple,
      //     //     child: Center(
      //     //       child: Text("Item 7",style: TextStyle(
      //     //           fontSize: 40
      //     //       ),),
      //     //     ),
      //     //   ),
      //     //   Container(
      //     //     padding: EdgeInsets.all(10),
      //     //     color: Colors.purple,
      //     //     child: Center(
      //     //       child: Text("Item 8",style: TextStyle(
      //     //           fontSize: 40
      //     //       ),),
      //     //     ),
      //     //   ),
      //     // ],
      //     children: [
      //       for(int i=1;i<=10;i++)
      //         Container(
      //           padding: EdgeInsets.all(10),
      //           color: Colors.purple,
      //           child: Center(
      //             child: Text("Item $i",style: TextStyle(
      //                 fontSize: 40
      //             ),),
      //           ),
      //         ),
      //     ],
      //   ),
      // ),
      // body: Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   child: GridView.builder(
      //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //         mainAxisSpacing: 10,
      //         crossAxisSpacing: 10
      //       ),
      //       itemCount: 10,
      //       padding: EdgeInsets.all(10),
      //       itemBuilder: (context, index) {
      //         return Container(
      //           color: Colors.green,
      //           child: Center(
      //             child: Text("Item $index",style: TextStyle(
      //               fontSize: 30
      //             ),),
      //           ),
      //         );
      //       },),
      // ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: GridView.extent(
//             maxCrossAxisExtent: 300,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             padding: EdgeInsets.all(10),
//             children: List.generate(20, (index) {
//               return Container(
//                 color: Colors.blue,
//                 child: Text("Item $index",style: TextStyle(
//                     fontSize: 25
//                 ),),
//               );
//             },)
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice8 extends StatefulWidget {
//   const Practice8({super.key});
//
//   @override
//   State<Practice8> createState() => _Practice8State(); // ✅ Correct return type
// }
//
// class _Practice8State extends State<Practice8> {
//   final List<Map<String, String>> categories = [
//     {
//       'title': 'Mobiles',
//       'image': 'https://m.media-amazon.com/images/I/71hIfcIPyxS._AC_UL320_.jpg'
//     },
//     {
//       'title': 'Fashion',
//       'image': 'https://m.media-amazon.com/images/I/71XjRJeY2eL._AC_UL320_.jpg'
//     },
//     {
//       'title': 'Electronics',
//       'image': 'https://m.media-amazon.com/images/I/71B7xg9xQPL._AC_UL320_.jpg'
//     },
//     {
//       'title': 'Travel',
//       'image': 'https://cdn-icons-png.flaticon.com/512/1046/1046863.png'
//     },
//     {
//       'title': 'Deals',
//       'image': 'https://cdn-icons-png.flaticon.com/512/1035/1035688.png'
//     },
//     {
//       'title': 'Home',
//       'image': 'https://cdn-icons-png.flaticon.com/512/609/609803.png'
//     },
//     {
//       'title': 'Grocery',
//       'image': 'https://cdn-icons-png.flaticon.com/512/3081/3081559.png'
//     },
//     {
//       'title': 'Movies',
//       'image': 'https://cdn-icons-png.flaticon.com/512/2830/2830308.png'
//     },
//     {
//       'title': 'Beauty',
//       'image': 'https://cdn-icons-png.flaticon.com/512/3565/3565418.png'
//     },
//     {
//       'title': 'Appliances',
//       'image': 'https://cdn-icons-png.flaticon.com/512/3523/3523063.png'
//     },
//     {
//       'title': 'Furniture',
//       'image': 'https://cdn-icons-png.flaticon.com/512/3303/3303893.png'
//     },
//     {
//       'title': 'Kids & Toys',
//       'image': 'https://cdn-icons-png.flaticon.com/512/2348/2348586.png'
//     },
//     {
//       'title': 'Prime',
//       'image': 'https://m.media-amazon.com/images/G/31/AmazonBusiness/AB_Icons/AB_Icon1.png'
//     },
//     {
//       'title': 'Business',
//       'image': 'https://m.media-amazon.com/images/G/31/AmazonBusiness/AB_Icons/AB_Icon2.png'
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Amazon Categories"),
//         centerTitle: true,
//       ),
//       body: GridView.builder(
//         padding: EdgeInsets.all(12),
//         itemCount: categories.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 20,
//           childAspectRatio: 0.75,
//         ),
//         itemBuilder: (context, index) {
//           final item = categories[index];
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ClipOval(
//                 child: Image.network(
//                   item['image']!,
//                   width: 70,
//                   height: 70,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 item['title']!,
//                 style: TextStyle(fontSize: 14),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Practice8 extends StatefulWidget {
  const Practice8({super.key});

  @override
  State<Practice8> createState() => _Practice8State();
}

class _Practice8State extends State<Practice8> {
  final List<Map<String, String>> categories = [
    {
      'title': 'Mobiles',
      'image': 'https://img.freepik.com/premium-vector/phone-icon-telephone-icon-symbol-isolated-mobile-icon-vector-illustration_1077884-2354.jpg'
    },
    {
      'title': 'Fashion',
      'image': 'https://www.shutterstock.com/image-vector/fashion-logo-design-template-suitable-600nw-2461938725.jpg'
    },
    {
      'title': 'Electronics',
      'image': 'https://cdn-icons-png.flaticon.com/512/8080/8080490.png'
    },
    {
      'title': 'Travel',
      'image': 'https://cdn-icons-png.flaticon.com/512/1046/1046863.png'
    },
    {
      'title': 'Deals',
      'image': 'https://cdn-icons-png.flaticon.com/512/1035/1035688.png'
    },
    {
      'title': 'Home',
      'image': 'https://cdn-icons-png.flaticon.com/512/609/609803.png'
    },
    {
      'title': 'Grocery',
      'image': 'https://cdn-icons-png.flaticon.com/512/3081/3081559.png'
    },
    {
      'title': 'Movies',
      'image': 'https://cdn-icons-png.flaticon.com/512/2830/2830308.png'
    },
    {
      'title': 'Beauty',
      'image': 'https://cdn-icons-png.flaticon.com/512/3565/3565418.png'
    },
    {
      'title': 'Appliances',
      'image': 'https://cdn-icons-png.flaticon.com/512/3523/3523063.png'
    },
    {
      'title': 'Furniture',
      'image': 'https://cdn-icons-png.flaticon.com/512/3303/3303893.png'
    },
    {
      'title': 'Kids & Toys',
      'image': 'https://cdn-icons-png.flaticon.com/512/2348/2348586.png'
    },
    {
      'title': 'Prime',
      'image': 'https://m.media-amazon.com/images/G/31/AmazonBusiness/AB_Icons/AB_Icon1.png'
    },
    {
      'title': 'Business',
      'image': 'https://m.media-amazon.com/images/G/31/AmazonBusiness/AB_Icons/AB_Icon2.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon Categories"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final item = categories[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                  child: ClipOval(
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.network(
                        item['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  item['title']!,
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}