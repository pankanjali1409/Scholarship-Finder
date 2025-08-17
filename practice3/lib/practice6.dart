// import 'package:flutter/material.dart';
//
// class Practice6 extends StatelessWidget {
//   const Practice6({super.key});
//
//   final List<String> imageUrls = const [
//     'https://picsum.photos/id/1010/400/200',
//     'https://picsum.photos/id/1011/400/200',
//     'https://picsum.photos/id/1012/400/200',
//     'https://picsum.photos/id/1013/400/200',
//     'https://picsum.photos/id/1014/400/200',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Vertical Image List")),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.orange, Colors.pink],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: ListView.builder(
//           padding: const EdgeInsets.all(16),
//           itemCount: imageUrls.length,
//           itemBuilder: (context, index) {
//             return Container(
//               margin: const EdgeInsets.only(bottom: 16),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 6,
//                     offset: Offset(0, 4),
//                   )
//                 ],
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(16),
//                 child: Image.network(
//                   imageUrls[index],
//                   height: 200,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Practice6 extends StatelessWidget {
  const Practice6({super.key});

  final List<String> imageUrls = const [
    'https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg',
    'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg',
    'https://media.assettype.com/outlooktraveller%2F2023-08%2F156f2273-1d67-40fa-9565-8ad62d5c56f7%2Fexperience_nature_2nd_option.jpg?w=1200&ar=40%3A21&auto=format%2Ccompress&ogImage=true&mode=crop&enlarge=true'
    'https://images.pexels.com/photos/34950/pexels-photo.jpg',
    'https://images.pexels.com/photos/2526027/pexels-photo-2526027.jpeg',
    'https://media.istockphoto.com/id/471926619/photo/moraine-lake-at-sunrise-banff-national-park-canada.jpg?s=612x612&w=0&k=20&c=mujiCtVk5QA697SD3d8V8BGmd91-8HlxCNHkolEA0Bo=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Creative Image Containers")),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepOrangeAccent, Colors.purpleAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            final imageUrl = imageUrls[index];

            BoxDecoration boxDecoration;
            BorderRadius borderRadius;

            switch (index % 4) {
              case 0:
                boxDecoration = BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  ),
                  borderRadius: BorderRadius.circular(25),
                );
                borderRadius = BorderRadius.circular(25);
                break;
              case 1:
                boxDecoration = const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                );
                borderRadius = BorderRadius.circular(100); // Full round for ClipRRect
                break;
              case 2:
                boxDecoration = BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Colors.red, Colors.black],
                    radius: 1.5,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                );
                borderRadius = const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                );
                break;
              default:
                boxDecoration = BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(10),
                );
                borderRadius = BorderRadius.circular(10);
            }

            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              decoration: boxDecoration,
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: borderRadius,
                child: Image.network(
                  imageUrl,
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




