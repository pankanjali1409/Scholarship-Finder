// import 'package:flutter/material.dart';
// import 'package:toast/toast.dart';
//
// class Practice7 extends StatefulWidget {
//   const Practice7({super.key});
//
//   @override
//   State<Practice7> createState() => _Practice7State();
// }
//
// class _Practice7State extends State<Practice7> {
//
//   List<String> names = ["Vicky","Gaurav","Dhananjay","Akash","Abhishek","Saurabh","Aryan","Gunjan","Trisha","Unnati"];
//   @override
//   Widget build(BuildContext context) {
//     ToastContext().init(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Practice 7",style: TextStyle(
//             fontSize: 30
//         ),),
//         centerTitle: true,
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         // child: ListView(
//         //   children: [
//         //     Padding(
//         //       padding: const EdgeInsets.all(8.0),
//         //       child: Container(
//         //         height: 200,
//         //         width: 800,
//         //         color: Colors.red,
//         //       ),
//         //     ),
//         //     Padding(
//         //       padding: const EdgeInsets.all(8.0),
//         //       child: Container(
//         //         height: 300,
//         //         width: 800,
//         //         color: Colors.green,
//         //       ),
//         //     ),
//         //   ],
//         // ),
//         // child: ListView.builder(
//         //   itemCount: 10,
//         //     itemBuilder: (context, index) {
//         //     index++;
//         //       return Center(
//         //         child: Container(
//         //           child: Text(index.toString(),style: TextStyle(
//         //             fontSize: 40
//         //           ),),
//         //         ),
//         //       );
//         //     },),
//         // child: ListView.builder(
//         //   itemCount: names.length,
//         //   itemBuilder: (context, index) {
//         //     if(index == 2){
//         //       names[index] = "Ajay";
//         //     }else if(index == 5){
//         //       names[index] = "Aman";
//         //     }
//         //     // return Center(
//         //     //   child: Container(
//         //     //     child: Text(names[index],style: TextStyle(
//         //     //         fontSize: 40
//         //     //     ),),
//         //     //   ),
//         //     // );
//         //     return ListTile(
//         //       leading: CircleAvatar(backgroundColor: Colors.lightBlue,child: Text('${index + 1}'),),
//         //       title: Text(names[index],style: TextStyle(
//         //         fontSize: 25
//         //       ),),
//         //       subtitle: Text("How are you",style: TextStyle(
//         //         fontSize: 18
//         //       ),),
//         //       trailing: Icon(Icons.arrow_forward_ios_rounded),
//         //       onTap: (){
//         //         Toast.show(names[index], duration: Toast.lengthLong);
//         //       },
//         //     );
//         //   },),
//         child: ListView.separated(
//           itemCount: names.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: CircleAvatar(backgroundColor: Colors.lightBlue,child: Text('${index + 1}'),),
//               title: Text(names[index],style: TextStyle(
//                   fontSize: 25
//               ),),
//               subtitle: Text("How are you",style: TextStyle(
//                   fontSize: 18
//               ),),
//               trailing: Icon(Icons.arrow_forward_ios_rounded),
//               onTap: (){
//                 Toast.show(names[index], duration: Toast.lengthLong);
//               },
//             );
//           },
//           separatorBuilder: (context, index) => Divider(
//             color: Colors.grey,
//             thickness: 1,
//           ),
//         ),
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:toast/toast.dart';
// //
// // class Practice7 extends StatefulWidget {
// //   const Practice7({super.key});
// //
// //   @override
// //   State<Practice7> createState() => _Practice7State();
// // }
// //
// // class _Practice7State extends State<Practice7> {
// //   List<Map<String, String>> users = [
// //     {
// //       "name": "Vicky",
// //       "image": "https://randomuser.me/api/portraits/men/1.jpg",
// //       "message": "Hey! What's up?"
// //     },
// //     {
// //       "name": "Gaurav",
// //       "image": "https://randomuser.me/api/portraits/men/2.jpg",
// //       "message": "Let's meet tomorrow."
// //     },
// //     {
// //       "name": "Dhananjay",
// //       "image": "https://randomuser.me/api/portraits/men/3.jpg",
// //       "message": "Call me when you're free."
// //     },
// //     {
// //       "name": "Akash",
// //       "image": "https://randomuser.me/api/portraits/men/4.jpg",
// //       "message": "Got the documents."
// //     },
// //     {
// //       "name": "Abhishek",
// //       "image": "https://randomuser.me/api/portraits/men/5.jpg",
// //       "message": "Sending pics now."
// //     },
// //     {
// //       "name": "Saurabh",
// //       "image": "https://randomuser.me/api/portraits/men/6.jpg",
// //       "message": "Awesome work bro!"
// //     },
// //     {
// //       "name": "Aryan",
// //       "image": "https://randomuser.me/api/portraits/men/7.jpg",
// //       "message": "Meet me at 7 PM."
// //     },
// //     {
// //       "name": "Gunjan",
// //       "image": "https://randomuser.me/api/portraits/women/8.jpg",
// //       "message": "I'll be late today."
// //     },
// //     {
// //       "name": "Trisha",
// //       "image": "https://randomuser.me/api/portraits/women/9.jpg",
// //       "message": "Love this song!"
// //     },
// //     {
// //       "name": "Unnati",
// //       "image": "https://randomuser.me/api/portraits/women/10.jpg",
// //       "message": "Thanks for helping!"
// //     },
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     ToastContext().init(context);
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           "Practice 7",
// //           style: TextStyle(fontSize: 30),
// //         ),
// //         centerTitle: true,
// //       ),
// //       body: ListView.builder(
// //         itemCount: users.length,
// //         itemBuilder: (context, index) {
// //           return ListTile(
// //             contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //             leading: CircleAvatar(
// //               backgroundImage: NetworkImage(users[index]["image"]!),
// //               radius: 28,
// //             ),
// //             title: Text(
// //               users[index]["name"]!,
// //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
// //             ),
// //             subtitle: Text(
// //               users[index]["message"]!,
// //               style: TextStyle(fontSize: 15, color: Colors.grey[800]),
// //               maxLines: 1,
// //               overflow: TextOverflow.ellipsis,
// //             ),
// //             onTap: () {
// //               Toast.show(users[index]["name"]!, duration: Toast.lengthLong);
// //             },
// //           );
// //         },
// //       ),
// //     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Practice7 extends StatefulWidget {
  const Practice7({super.key});

  @override
  State<Practice7> createState() => _Practice7State();
}

class _Practice7State extends State<Practice7> {
  List<Map<String, String>> users = [
    {
      "name": "Anjali",
      "image": "https://randomuser.me/api/portraits/women/1.jpg",
      "message": "Hey! What's up?"
    },
    {
      "name": "Deepti",
      "image": "https://randomuser.me/api/portraits/women/2.jpg",
      "message": "Let's meet tomorrow."
    },
    {
      "name": "Harshita",
      "image": "https://randomuser.me/api/portraits/women/3.jpg",
      "message": "hello."
    },
    {
      "name": "Khushi",
      "image": "https://randomuser.me/api/portraits/women/4.jpg",
      "message": "Got the documents."
    },
    {
      "name": "Alice",
      "image": "https://randomuser.me/api/portraits/women/5.jpg",
      "message": "how are you."
    },
    {
      "name": "John",
      "image": "https://randomuser.me/api/portraits/men/1.jpg",
      "message": "Awesome work bro!"
    },
    {
      "name": "Charlie",
      "image": "https://randomuser.me/api/portraits/men/2.jpg",
      "message": "Meeting at 7 PM."
    },
    {
      "name": "Khushi",
      "image": "https://randomuser.me/api/portraits/women/6.jpg",
      "message": "I'll be late today."
    },
    {
      "name": "Joseph",
      "image": "https://randomuser.me/api/portraits/men/3.jpg",
      "message": "Today's work"
    },
    {
      "name": "Kevin",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
      "message": "Thanks for helping!"
    },
    {
      "name": "Stephen",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
      "message": "Talk later!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practice 7",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xFFE3F2FD), // light background color
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding:
              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(users[index]["image"]!),
                radius: 28,
              ),
              title: Text(
                users[index]["name"]!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                users[index]["message"]!,
                style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Toast.show(users[index]["name"]!, duration: Toast.lengthLong);
              },
            ),
          );
        },
      ),
    );
  }
}

