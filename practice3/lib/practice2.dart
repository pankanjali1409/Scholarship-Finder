import 'package:flutter/material.dart';

class Practice2 extends StatefulWidget {
  const Practice2({super.key});

  @override
  State<Practice2> createState() => _Practice2State();
}

class _Practice2State extends State<Practice2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice2",style: TextStyle(
            fontSize: 30,color: Colors.deepPurple
        ),),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      // body: Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   color: Colors.pinkAccent,
      //   child: Center(
      //     child: Container(
      //       height: 500,
      //       width: 500,
      //       color: Colors.red,
      //     )
      //   ),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("One",style: TextStyle(
                    fontSize: 30,color: Colors.red
                ),),
                Text("Two",style: TextStyle(
                    fontSize: 30,color: Colors.red
                ),),
                Text("Three",style: TextStyle(
                    fontSize: 30,color: Colors.red
                ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("One",style: TextStyle(
                    fontSize: 30,color: Colors.red
                ),),
                Text("Two",style: TextStyle(
                    fontSize: 30,color: Colors.red
                ),),
                Text("Three",style: TextStyle(
                    fontSize: 30,color: Colors.red
                ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("One",style: TextStyle(
                    fontSize: 30,color: Colors.red
                ),),
                Text("Two",style: TextStyle(
                    fontSize: 30,color: Colors.red
                ),),
                Text("Three",style: TextStyle(
                    fontSize: 30,color: Colors.red
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}