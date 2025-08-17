// import 'package:flutter/material.dart';
//
// class ScholarshipDetailScreen extends StatelessWidget {
//   final Map<String, dynamic> scholarship;
//
//   const ScholarshipDetailScreen({super.key, required this.scholarship});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(scholarship['title'] ?? 'Scholarship Details'),
//         backgroundColor: const Color(0xFF36D1DC),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (scholarship['image'] != null)
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.network(
//                   scholarship['image'],
//                   height: 200,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             const SizedBox(height: 16),
//             Text(
//               scholarship['title'] ?? '',
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Text("Category: ${scholarship['category']}"),
//             Text("Gender: ${scholarship['gender']}"),
//             Text("Income Limit: ₹${scholarship['income']}"),
//             const SizedBox(height: 20),
//             const Text(
//               "Description",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               scholarship['description'] ??
//                   "This scholarship is awarded to eligible students based on category, income, and gender.",
//               style: const TextStyle(fontSize: 15),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ScholarshipDetailScreen extends StatelessWidget {
final Map<String, dynamic> scholarship;

const ScholarshipDetailScreen({super.key, required this.scholarship});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text(scholarship['title']),
backgroundColor: Colors.teal,
),
body: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.all(16.0),
child: Card(
color: Colors.teal,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
elevation: 5,
child: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
ClipRRect(
borderRadius: BorderRadius.circular(12),
child: Image.network(
scholarship['image'],
height: 180,
width: double.infinity,
fit: BoxFit.cover,
),
),
const SizedBox(height: 16),
Text(
scholarship['title'],
style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
),
const SizedBox(height: 12),
_buildDetailRow("Category", scholarship['category']),
_buildDetailRow("Gender", scholarship['gender']),
_buildDetailRow("Income Limit", "₹${scholarship['income']}"),
_buildDetailRow("Last Date", scholarship['lastDate'] ?? '15/09/2025'),
const SizedBox(height: 16),
const Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
const SizedBox(height: 6),
Text(scholarship['description'] ?? ' All India Scholarship  2025 is an initiative of  Education Trust (a Public Charitable Trust) for students who have passed SSC/HSC or equivalent examinations in Class 10/12. The primary objective of the scholarship is to provide financial assistance to students from economically disadvantaged families who wish to pursue a job-oriented diploma course at a recognised government polytechnic in India. A total of 550 students will receive ₹10,000 per annum for a maximum of 3 years.'),
const SizedBox(height: 16),
const Text("Eligibility", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
const SizedBox(height: 6),
Text(scholarship['eligibility'] ?? 'be enrolled in (or have secured admission to) a course at a government or any other recognised polytechnic institute in India, and belong to a family with a low annual income'),
const SizedBox(height: 16),
if (scholarship['link'] != null)
TextButton(
onPressed: () {
// Launch URL logic here if needed
},
child: const Text("Apply Now", style: TextStyle(color: Colors.blue)),
),
],
),
),
),
),
),
);
}

Widget _buildDetailRow(String label, String value) {
return Padding(
padding: const EdgeInsets.symmetric(vertical: 2),
child: Row(
children: [
Text("$label: ", style: const TextStyle(fontWeight: FontWeight.bold)),
Expanded(child: Text(value)),
],
),
);
}
}