import 'package:flutter/material.dart';

class Practice5 extends StatefulWidget {
  const Practice5({super.key});

  @override
  State<Practice5> createState() => _Practice5State();
}

class _Practice5State extends State<Practice5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice 5",style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            InkWell(
              onTap: () {

              },
              child: Container(
                  width: double.infinity,
                  height: 450,
                  child: Image.network( 'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg')),
            ),
            InkWell(
              onTap: () {
              },
              child: Container(
                  width: double.infinity,
                  height: 450,
                  child: Image.network('https://images.pexels.com/photos/34950/pexels-photo.jpg')),
            ),
            InkWell(
              onTap: () {
              },
              child: Container(
                  width: double.infinity,
                  height: 450,
                  child: Image.network("https://images.pexels.com/photos/2325447/pexels-photo-2325447.jpeg")),
            ),
          ],
        ),
      ),
    );
  }
}


