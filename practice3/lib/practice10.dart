// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Practice10());
// }
//
// class Practice10 extends StatelessWidget {
//   const Practice10({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Armstrong Numbers',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const ArmstrongHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class ArmstrongHomePage extends StatelessWidget {
//   const ArmstrongHomePage({Key? key}) : super(key: key);
//
//   // Custom function to check if a number is an Armstrong number
//   bool isArmstrong(int number) {
//     int sum = 0;
//     int temp = number;
//
//     while (temp > 0) {
//       int digit = temp % 10;
//       sum += digit * digit * digit;
//       temp ~/= 10;
//     }
//
//     return sum == number;
//   }
//
//   // Function to get Armstrong numbers between 1 and 1000
//   List<int> getArmstrongNumbers() {
//     List<int> result = [];
//     for (int i = 1; i <= 1000; i++) {
//       if (isArmstrong(i)) {
//         result.add(i);
//       }
//     }
//     return result;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     List<int> armstrongNumbers = getArmstrongNumbers();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Armstrong Numbers (1–1000)'),
//       ),
//       body: ListView.builder(
//         itemCount: armstrongNumbers.length,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             elevation: 4,
//             child: ListTile(
//               leading: const Icon(Icons.check_circle, color: Colors.blue),
//               title: Text(
//                 'Number: ${armstrongNumbers[index]}',
//                 style: const TextStyle(fontSize: 18),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
//
// class Practice10 extends StatelessWidget {
//   const Practice10({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Age Calculator',
//       debugShowCheckedModeBanner: false,
//       home: AgeCalculatorPage(),
//     );
//   }
// }
//
// class AgeCalculatorPage extends StatefulWidget {
//   const AgeCalculatorPage({super.key});
//
//   @override
//   State<AgeCalculatorPage> createState() => _AgeCalculatorPageState();
// }
//
// class _AgeCalculatorPageState extends State<AgeCalculatorPage> {
//   final TextEditingController _controller = TextEditingController();
//   String _result = '';
//
//   void _calculateAge() {
//     final input = _controller.text.trim();
//     if (input.isEmpty) {
//       setState(() {
//         _result = 'Please enter your birth year.';
//       });
//       return;
//     }
//
//     final birthYear = int.tryParse(input);
//     final currentYear = DateTime.now().year;
//
//     if (birthYear == null || birthYear > currentYear || birthYear < 1900) {
//       setState(() {
//         _result = 'Please enter a valid year between 1900 and $currentYear.';
//       });
//     } else {
//       final age = currentYear - birthYear;
//       setState(() {
//         _result = 'You are $age years old.';
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Age Calculator'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: 'Enter your birth year',
//                 border: OutlineInputBorder(),
//               ),
//             ),//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _calculateAge,
//               child: const Text('Calculate Age'),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               _result,
//               style: const TextStyle(fontSize: 18, color: Colors.black87),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice10 extends StatelessWidget {
//   const Practice10({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Age Calculator',
//       debugShowCheckedModeBanner: false,
//       home: AgeCalculatorPage(),
//     );
//   }
// }
//
// class AgeCalculatorPage extends StatefulWidget {
//   const AgeCalculatorPage({super.key});
//
//   @override
//   State<AgeCalculatorPage> createState() => _AgeCalculatorPageState();
// }
//
// class _AgeCalculatorPageState extends State<AgeCalculatorPage> {
//   final TextEditingController _controller = TextEditingController();
//   String _result = '';
//
//   void _calculateAge() {
//     final input = _controller.text.trim();
//     final currentYear = DateTime.now().year;
//
//     if (input.isEmpty) {
//       setState(() {
//         _result = 'Please enter your birth year.';
//       });
//       return;
//     }
//
//     final birthYear = int.tryParse(input);
//     if (birthYear == null || birthYear > currentYear || birthYear < 1900) {
//       setState(() {
//         _result = 'Enter a valid year between 1900 and $currentYear.';
//       });
//     } else {
//       final age = currentYear - birthYear;
//       setState(() {
//         _result = 'You are $age years old.';
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Age Calculator')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: 'Enter your birth year',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _calculateAge,
//               child: const Text('Calculate Age'),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               _result,
//               style: const TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice10 extends StatefulWidget {
//   const Practice10({super.key});
//
//   @override
//   State<Practice10> createState() => _Practice10State();
// }
//
// class _Practice10State extends State<Practice10> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//
//   String _name = '';
//   String _phone = '';
//   bool _showCard = false;
//
//   void _handleSubmit() {
//     final name = _nameController.text.trim();
//     final phone = _phoneController.text.trim();
//
//     if (name.isNotEmpty && phone.isNotEmpty) {
//       setState(() {
//         _name = name;
//         _phone = phone;
//         _showCard = true;
//       });
//     } else {
//       setState(() {
//         _showCard = false;
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please enter both name and phone number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Dynamic Form')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: const InputDecoration(
//                 labelText: 'Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 15),
//             TextField(
//               controller: _phoneController,
//               keyboardType: TextInputType.phone,
//               decoration: const InputDecoration(
//                 labelText: 'Phone Number',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _handleSubmit,
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                 backgroundColor: Colors.blue,
//               ),
//               child: const Text(
//                 'Submit',
//                 style: TextStyle(fontSize: 16, color: Colors.white),
//               ),
//             ),
//             const SizedBox(height: 30),
//             if (_showCard)
//               Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Name: $_name', style: const TextStyle(fontSize: 18)),
//                       const SizedBox(height: 8),
//                       Text('Phone: $_phone', style: const TextStyle(fontSize: 18)),
//                     ],
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice10 extends StatefulWidget {
//   const Practice10({super.key});
//
//   @override
//   State<Practice10> createState() => _Practice10State();
// }
//
// class _Practice10State extends State<Practice10> {
//   bool _showImage = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Image Toggle Demo')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text('Show Image'),
//                 Switch(
//                   value: _showImage,
//                   onChanged: (value) {
//                     setState(() {
//                       _showImage = value;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(height: 30),
//             _showImage
//                 ? Column(
//               children: [
//                 Image.asset(
//                   'assets/images/home1.jpg',
//                   width: 250,
//                   height: 200,
//                   fit: BoxFit.cover,
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   'Beautiful home',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             )
//                 : const Text(
//               'Toggle the switch to show the image.',
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice10 extends StatelessWidget {
//   const Practice10({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Go to Profile'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const ProfilePage()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// // ✅ Profile Page widget must be added or imported
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("My Profile"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 20),
//           const CircleAvatar(
//             radius: 50,
//             backgroundImage: NetworkImage(
//                 'https://media.gettyimages.com/id/1317804578/photo/one-businesswoman-headshot-smiling-at-the-camera.jpg?s=612x612&w=gi&k=20&c=tFkDOWmEyqXQmUHNxkuR5TsmRVLi5VZXYm3mVsjee0E=',
//             ),
//           ),
//           const SizedBox(height: 20),
//           const ListTile(
//             leading: Icon(Icons.person),
//             title: Text("Alice"),
//           ),
//           const ListTile(
//             leading: Icon(Icons.email),
//             title: Text("Alice@example.com"),
//           ),
//           ListTile(
//             leading: const Icon(Icons.logout),
//             title: const Text("Logout"),
//             onTap: () {
//               Navigator.pop(context); // Go back
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:toast/toast.dart'; // ✅ using toast package
//
// class Practice10 extends StatefulWidget {
//   const Practice10({super.key});
//
//   @override
//   State<Practice10> createState() => _Practice10State();
// }
//
// class _Practice10State extends State<Practice10> {
//   Color backgroundColor = Colors.white;
//
//   @override
//   void initState() {
//     super.initState();
//     ToastContext().init(context); // ✅ Required for toast package
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Custom Button Demo"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       backgroundColor: backgroundColor,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MyButton(
//               label: "Show Toast",
//               color: Colors.blue,
//               onTap: () {
//                 Toast.show("Hello from Toast!",
//                     duration: Toast.lengthShort, gravity: Toast.bottom);
//               },
//             ),
//             const SizedBox(height: 20),
//             MyButton(
//               label: "Change Background",
//               color: Colors.green,
//               onTap: () {
//                 setState(() {
//                   backgroundColor = backgroundColor == Colors.white
//                       ? Colors.amber.shade100
//                       : Colors.white;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             MyButton(
//               label: "Print to Console",
//               color: Colors.orange,
//               onTap: () {
//                 print("✅ Console Message: Button Pressed!");
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class MyButton extends StatelessWidget {
//   final String label;
//   final Color color;
//   final VoidCallback onTap;
//
//   const MyButton({
//     super.key,
//     required this.label,
//     required this.color,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: color,
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       ),
//       onPressed: onTap,
//       child: Text(
//         label,
//         style: const TextStyle(fontSize: 16, color: Colors.white),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice10 extends StatefulWidget {
//   const Practice10({super.key});
//
//   @override
//   State<Practice10> createState() => _Practice10State();
// }
//
// class _Practice10State extends State<Practice10> {
//   final TextEditingController nameController = TextEditingController();
//
//   void navigateToSecondScreen() {
//     String name = nameController.text.trim();
//     if (name.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => GreetingScreen(name: name),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Enter Name"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(
//                 labelText: 'Enter your name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: navigateToSecondScreen,
//               child: const Text("Go"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class GreetingScreen extends StatelessWidget {
//   final String name;
//
//   const GreetingScreen({super.key, required this.name});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Greeting Screen"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Center(
//         child: Text(
//           "Hello, $name!",
//           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
//
// class Practice10 extends StatefulWidget {
//   const Practice10({super.key});
//
//   @override
//   State<Practice10> createState() => _Practice10State();
// }
//
// class _Practice10State extends State<Practice10> {
//   List<int> perfectNumbers = [];
//
//   // Function to find perfect numbers from 1 to 1000
//   void findPerfectNumbers() {
//     List<int> results = [];
//
//     for (int num = 2; num <= 1000; num++) {
//       int sum = 1;
//       for (int i = 2; i <= num ~/ 2; i++) {
//         if (num % i == 0) {
//           sum += i;
//         }
//       }
//       if (sum == num) {
//         results.add(num);
//       }
//     }
//
//     setState(() {
//       perfectNumbers = results;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Perfect Numbers"),
//         backgroundColor: Colors.teal,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: findPerfectNumbers,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.teal,
//               ),
//               child: const Text("Find Perfect Numbers"),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: perfectNumbers.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     color: Colors.teal.shade100,
//                     margin: const EdgeInsets.symmetric(vertical: 6),
//                     child: ListTile(
//                       leading: const Icon(Icons.star, color: Colors.teal),
//                       title: Text(
//                         "Perfect Number: ${perfectNumbers[index]}",
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice10 extends StatefulWidget {
//   const Practice10({super.key});
//
//   @override
//   State<Practice10> createState() => _Practice10State();
// }
//
// class _Practice10State extends State<Practice10> {
//   // Sample list of users
//   List<Map<String, dynamic>> users = [
//     {
//       'name': 'Alice',
//       'image': 'https://i.pravatar.cc/150?img=1',
//       'isToggled': false,
//     },
//     {
//       'name': 'John',
//       'image': 'https://i.pravatar.cc/150?img=2',
//       'isToggled': false,
//     },
//     {
//       'name': 'Charlie',
//       'image': 'https://i.pravatar.cc/150?img=3',
//       'isToggled': false,
//     },
//   ];
//
//   void toggleColor(int index) {
//     setState(() {
//       users[index]['isToggled'] = !users[index]['isToggled'];
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("ListTile Toggle"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: ListView.builder(
//         itemCount: users.length,
//         itemBuilder: (context, index) {
//           return Card(
//             color: users[index]['isToggled'] ? Colors.deepPurple.shade100 : Colors.white,
//             margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//             child: ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage(users[index]['image']),
//               ),
//               title: Text(users[index]['name']),
//               trailing: IconButton(
//                 icon: Icon(
//                   users[index]['isToggled'] ? Icons.toggle_on : Icons.toggle_off,
//                   color: users[index]['isToggled'] ? Colors.green : Colors.grey,
//                   size: 30,
//                 ),
//                 onPressed: () => toggleColor(index),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice10 extends StatefulWidget {
//   const Practice10({super.key});
//
//   @override
//   State<Practice10> createState() => _Practice10State();
// }
//
// class _Practice10State extends State<Practice10> {
//   // Function to compute factorial
//   int factorial(int n) {
//     if (n == 0 || n == 1) return 1;
//     return n * factorial(n - 1);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Factorial List'),
//         backgroundColor: Colors.teal,
//       ),
//       body: ListView.builder(
//         itemCount: 10, // From 1 to 10
//         itemBuilder: (context, index) {
//           int num = index + 1;
//           int fact = factorial(num);
//           return Card(
//             margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//             color: Colors.teal.shade50,
//             child: ListTile(
//               title: Text(
//                 '$num! = $fact',
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice10 extends StatefulWidget {
//   const Practice10({super.key});
//
//   @override
//   State<Practice10> createState() => _Practice10State();
// }
//
// class _Practice10State extends State<Practice10> {
//   String input1 = '';
//   String input2 = '';
//   double? add, sub, mul, div;
//
//   void calculate() {
//     double? num1 = double.tryParse(input1);
//     double? num2 = double.tryParse(input2);
//
//     setState(() {
//       if (num1 != null && num2 != null) {
//         add = num1 + num2;
//         sub = num1 - num2;
//         mul = num1 * num2;
//         div = num2 != 0 ? num1 / num2 : null;
//       } else {
//         add = sub = mul = div = null;
//       }
//     });
//   }
//
//   Widget buildResult(String label, double? value) {
//     return Text(
//       "$label: ${value != null ? value.toStringAsFixed(2) : 'Invalid'}",
//       style: const TextStyle(fontSize: 18),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Live Calculator"),
//         centerTitle: true,
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               decoration: const InputDecoration(
//                 labelText: "Enter first number",
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.number,
//               onChanged: (val) {
//                 input1 = val;
//                 calculate();
//               },
//             ),
//             const SizedBox(height: 20),
//             TextField(
//               decoration: const InputDecoration(
//                 labelText: "Enter second number",
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.number,
//               onChanged: (val) {
//                 input2 = val;
//                 calculate();
//               },
//             ),
//             const SizedBox(height: 30),
//             const Divider(thickness: 1),
//             buildResult("Addition", add),
//             buildResult("Subtraction", sub),
//             buildResult("Multiplication", mul),
//             buildResult("Division", div),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class Practice10 extends StatefulWidget {
//   const Practice10({super.key});
//
//   @override
//   State<Practice10> createState() => _Practice10State();
// }
//
// class _Practice10State extends State<Practice10> {
//   final List<String> allNames = [
//     "Alice", "Bob", "Charlie", "David", "Emma",
//     "Frank", "Grace", "Hannah", "Isaac", "Jack",
//     "Kiran", "Lily", "Mona", "Nate", "Olivia",
//     "Paul", "Quincy", "Rachel", "Steve", "Tina"
//   ];
//
//   List<String> filteredNames = [];
//
//   @override
//   void initState() {
//     super.initState();
//     filteredNames = allNames; // Initially show all names
//   }
//
//   void filterNames(String query) {
//     setState(() {
//       filteredNames = allNames
//           .where((name) =>
//           name.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Searchable Name List'),
//         backgroundColor: Colors.blueAccent,
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: TextField(
//               decoration: const InputDecoration(
//                 labelText: 'Search name',
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.search),
//               ),
//               onChanged: filterNames,
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: filteredNames.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(filteredNames[index]),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Practice10 extends StatefulWidget {
  const Practice10({super.key});

  @override
  State<Practice10> createState() => _Practice10State();
}

class _Practice10State extends State<Practice10> {
  final List<String> allNames = [
    "Alice", "Bob", "Charlie", "David", "Emma",
    "Frank", "Grace", "Hannah", "Isaac", "Jack",
    "Kiran", "Lily", "Mona", "Nate", "Olivia",
    "Paul", "Quincy", "Rachel", "Steve", "Tina"
  ];

  List<String> filteredNames = [];

  @override
  void initState() {
    super.initState();
    filteredNames = allNames;
  }

  void filterNames(String query) {
    setState(() {
      filteredNames = allNames
          .where((name) =>
          name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          '🌟 Search Names',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF74ebd5), Color(0xFFACB6E5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search name...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.black54),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onChanged: filterNames,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: filteredNames.isEmpty
                  ? const Center(
                child: Text(
                  "No names found!",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              )
                  : ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: filteredNames.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white.withOpacity(0.85),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          filteredNames[index][0],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        filteredNames[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}








































