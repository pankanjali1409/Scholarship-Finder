// import 'package:flutter/material.dart';
// import 'package:toast/toast.dart';
//
// class Practice9 extends StatefulWidget {
//   const Practice9({super.key});
//
//   @override
//   State<Practice9> createState() => _Practice9State();
// }
//
// class _Practice9State extends State<Practice9> {
//   final text1 = TextEditingController();
//   final text2 = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     ToastContext().init(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Calculator",
//           style: TextStyle(fontSize: 30),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         width: double.infinity,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 30),
//               _buildTextField(text1, "Enter first number"),
//               SizedBox(height: 20),
//               _buildTextField(text2, "Enter second number"),
//               SizedBox(height: 30),
//               Wrap(
//                 spacing: 20,
//                 runSpacing: 20,
//                 alignment: WrapAlignment.center,
//                 children: [
//                   _buildButton("Add", Colors.green, () => _calculate('+')),
//                   _buildButton("Subtract", Colors.orange, () => _calculate('-')),
//                   _buildButton("Multiply", Colors.blue, () => _calculate('*')),
//                   _buildButton("Divide", Colors.red, () => _calculate('/')),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTextField(TextEditingController controller, String label) {
//     return TextField(
//       controller: controller,
//       keyboardType: TextInputType.number,
//       decoration: InputDecoration(
//         labelText: label,
//         labelStyle: TextStyle(fontSize: 18, color: Colors.black),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//         prefixIcon: Icon(Icons.calculate),
//         filled: true,
//         fillColor: Colors.grey.shade200,
//       ),
//     );
//   }
//
//   Widget _buildButton(String text, Color color, VoidCallback onPressed) {
//     return SizedBox(
//       width: 140,
//       height: 50,
//       child: ElevatedButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color,
//           foregroundColor: Colors.white,
//           textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//         ),
//         child: Text(text),
//       ),
//     );
//   }
//
//   void _calculate(String operator) {
//     try {
//       double num1 = double.parse(text1.text.trim());
//       double num2 = double.parse(text2.text.trim());
//       double result;
//
//       switch (operator) {
//         case '+':
//           result = num1 + num2;
//           break;
//         case '-':
//           result = num1 - num2;
//           break;
//         case '*':
//           result = num1 * num2;
//           break;
//         case '/':
//           if (num2 == 0) {
//             Toast.show("Cannot divide by zero!", duration: Toast.lengthLong);
//             return;
//           }
//           result = num1 / num2;
//           break;
//         default:
//           result = 0;
//       }
//
//       Toast.show("Result: ${result.toStringAsFixed(2)}",
//           duration: Toast.lengthLong);
//     } catch (e) {
//       Toast.show("Please enter valid numbers!", duration: Toast.lengthLong);
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(StudentListApp());
}

class StudentListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student List',
      home: StudentListScreen(),
    );
  }
}

class Student {
  final String name;
  final int age;
  final String imageUrl;

  Student({required this.name, required this.age, required this.imageUrl});
}

class StudentListScreen extends StatelessWidget {
  final List<Student> students = [
    Student(
      name: 'Alice',
      age: 20,
      imageUrl: 'https://randomuser.me/api/portraits/women/1.jpg',
    ),
    Student(
      name: 'Bob',
      age: 22,
      imageUrl: 'https://randomuser.me/api/portraits/men/2.jpg',
    ),
    Student(
      name: 'Charlie',
      age: 19,
      imageUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
    ),
    Student(
      name: 'Diana',
      age: 21,
      imageUrl: 'https://randomuser.me/api/portraits/women/4.jpg',
    ),
  ];

  void _showToast(BuildContext context, String name) {
    ToastContext().init(context);
    Toast.show("Tapped on $name", duration: Toast.lengthShort, gravity: Toast.bottom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student List")),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(student.imageUrl),
            ),
            title: Text(student.name),
            subtitle: Text("Age: ${student.age}"),
            onTap: () => _showToast(context, student.name),
          );
        },
      ),
    );
  }
}



