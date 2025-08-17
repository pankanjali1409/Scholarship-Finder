

import 'package:flutter/material.dart';
import 'scholarship_filter_screen.dart';
import 'career_quiz_screen.dart';
import 'login_screen.dart';
import 'class10_screen.dart';
import 'class11_screen.dart';
import 'class12_screen.dart';
import 'graduation_screen.dart';
import 'postgraduation_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const LoginScreen()),
                        );
                      },
                    ),
                    const SizedBox(width: 4),
                    const Expanded(
                      child: Text(
                        "Career & Scholarship Guide",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.school, color: Colors.white),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Subtitle
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Explore career paths and find scholarships tailored for you.",
                  style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 24),

              // Options
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  children: [
                    _OptionCard(
                      title: "Career Quiz",
                      subtitle: "Get career suggestions based on your interests",
                      icon: Icons.assignment_ind,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => CareerQuizScreen()),
                        );
                      },
                    ),
                    _OptionCard(
                      title: "Scholarship Filter",
                      subtitle: "Find scholarships by category, income, gender",
                      icon: Icons.school,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ScholarshipFilterScreen()),
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                    const Divider(color: Colors.white70),
                    const SizedBox(height: 8),

                    // Additional scholarship categories
                    _OptionCard(
                      title: "Scholarship for Class 10",
                      subtitle: "Find opportunities for Class 10 students",
                      icon: Icons.book_outlined,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => class10Screen()),
                        );
                      },
                    ),
                    _OptionCard(
                      title: "Scholarship for Class 11",
                      subtitle: "Find opportunities for Class 11 students",
                      icon: Icons.menu_book,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => class11Screen()),
                        );
                      },
                    ),
                    _OptionCard(
                      title: "Scholarship for Class 12",
                      subtitle: "Find opportunities for Class 12 students",
                      icon: Icons.school_outlined,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => class12Screen()),
                        );
                      },
                    ),
                    _OptionCard(
                      title: "Scholarship for Graduation",
                      subtitle: "Undergraduate scholarships to help you succeed",
                      icon: Icons.workspace_premium,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => graduationScreen()),
                        );
                      },
                    ),
                    _OptionCard(
                      title: "Scholarship for Post Graduation",
                      subtitle: "Scholarships for higher studies and research",
                      icon: Icons.workspace_premium_outlined,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => postgraduationScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OptionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _OptionCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.95),
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      shadowColor: Colors.black26,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(12),
                child: Icon(icon, color: Colors.white, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 4),
                    Text(subtitle,
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade600)),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
