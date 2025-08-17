import 'package:flutter/material.dart';
import 'login_screen.dart';
// import 'scholarship_detail_screen.dart';
import 'package:practice4/scholarship_detail_screen.dart';

class class11Screen extends StatefulWidget {
  const class11Screen({super.key});

  @override
  State<class11Screen> createState() => _class11Screen();
}

class _class11Screen extends State<class11Screen> {
  String gender = 'Any';
  String category = 'Any';
  int incomeLimit = 80000;

  final List<Map<String, dynamic>> scholarships = [
    {
      "title": "SC Scholarship",
      "category": "SC",
      "gender": "Any",
      "income": 40000,
      "image": "https://sarsaeducation.com/wp-content/uploads/2025/06/Top-Scholarship-for-11th-and-12th-Students.jpeg?text=SC"
    },
    {
      "title": "Girls OBC Fund",
      "category": "OBC",
      "gender": "Female",
      "income": 60000,
      "image": "https://blogmedia.testbook.com/blog/wp-content/uploads/2023/09/question-an-01751a77.png?text=OBC"
    },
    {
      "title": "Merit Gen",
      "category": "General",
      "gender": "Any",
      "income": 70000,
      "image": "https://globalfamily.in/img/records/666764fcd1161.png?text=Merit"
    },
    {
      "title": "Merit girls yojana",
      "category": "General",
      "gender": "Any",
      "income": 80000,
      "image": "https://motion.ac.in/blog/wp-content/uploads/2025/07/CBSE-Scholarship-Know-the-Application-Process-Eligibility-and-Benefits-384x220.png?text=General"
    },
    {
      "title": "Reliance Scholarship",
      "category": "General",
      "gender": "Female",
      "income": 80000,
      "image": "https://cache.careers360.mobi/media/article_images/2024/12/10/Scholarship.png?text=Reliance"
    },
    {
      "title": "Education Scholarship",
      "category": "General",
      "gender": "Female",
      "income": 80000,
      "image": "https://cigmafoundation.org/scholarships/wp-content/uploads/2023/09/CBSE-Single-Girl-Child-Scholarship-2023-for-Class-11-12-Students.jpg?text=Education"
    },
  ];

  final incomeOptions = [40000, 60000, 80000, 100000];

  List<Map<String, dynamic>> get filtered {
    return scholarships.where((s) {
      final matchGender = (gender == 'Any' || s['gender'] == gender);
      final matchCategory = (category == 'Any' || s['category'] == category);
      final matchIncome = (s['income'] as int) <= incomeLimit;
      return matchGender && matchCategory && matchIncome;
    }).toList();
  }

  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF36D1DC), Color(0xFF5B86E5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 6),
                  const Expanded(
                    child: Text(
                      "Scholarship for Class 11",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.logout, color: Colors.black),
                    onPressed: _logout,
                    tooltip: "Logout",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Refine scholarships by gender, category and income.",
                style: TextStyle(
                    color: Colors.black, fontSize: 14),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    )
                  ],
                ),
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: gender,
                            items: ['Any', 'Male', 'Female', 'Other']
                                .map((e) =>
                                DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                                .toList(),
                            onChanged: (v) {
                              if (v != null) setState(() => gender = v);
                            },
                            decoration: InputDecoration(
                              labelText: "Gender",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              isDense: true,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: category,
                            items: ['Any', 'General', 'OBC', 'SC', 'ST']
                                .map((e) =>
                                DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                                .toList(),
                            onChanged: (v) {
                              if (v != null) setState(() => category = v);
                            },
                            decoration: InputDecoration(
                              labelText: "Category",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              isDense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 6,
                        children: incomeOptions.map((value) {
                          final selected = incomeLimit == value;
                          return ChoiceChip(
                            label: Text("≤ ₹$value"),
                            selected: selected,
                            selectedColor: Colors.teal.shade700,
                            backgroundColor: Colors.grey.shade200,
                            onSelected: (_) {
                              setState(() {
                                incomeLimit = value;
                              });
                            },
                            labelStyle: TextStyle(
                              color: selected ? Colors.white : Colors.black87,
                              fontWeight: selected
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: filtered.isEmpty
                        ? const Center(
                      child: Text(
                        "No scholarships match the filters.",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                        : ListView.builder(
                      padding: const EdgeInsets.only(top: 12, bottom: 80),
                      itemCount: filtered.length,
                      itemBuilder: (context, index) {
                        final Map<String, dynamic> s = filtered[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      ScholarshipDetailScreen(scholarship: s),
                                ),
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              elevation: 4,
                              clipBehavior: Clip.antiAlias,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 140,
                                      child: Image.network(
                                        s['image'] ?? '',
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error,
                                            stackTrace) =>
                                            Container(
                                                color: Colors.grey.shade300),
                                        loadingBuilder: (context, child,
                                            progress) {
                                          if (progress == null) return child;
                                          return Container(
                                            color: Colors.grey.shade200,
                                            child: const Center(
                                                child: CircularProgressIndicator(
                                                    strokeWidth: 2)),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(
                                          s['title'] ?? '',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Text("- ${s['category']} Scholarship",
                                            style: TextStyle(
                                                color: Colors.green.shade700)),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            const Icon(
                                                Icons.currency_rupee, size: 18,
                                                color: Colors.black54),
                                            const SizedBox(width: 6),
                                            Text("Income ≤ ₹${s['income']}",
                                                style: const TextStyle(
                                                    fontSize: 14)),
                                            const Spacer(),
                                            const Icon(Icons.person, size: 18,
                                                color: Colors.black54),
                                            const SizedBox(width: 6),
                                            Text("Gender: ${s['gender']}",
                                                style: const TextStyle(
                                                    fontSize: 14)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      child: ElevatedButton.icon(
                        onPressed: _logout,
                        icon: const Icon(Icons.logout),
                        label: const Text("Logout"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF36D1DC),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}