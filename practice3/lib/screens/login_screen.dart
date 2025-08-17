// import 'package:flutter/material.dart';
// import 'home_screen.dart';
//
// class LoginScreen extends StatelessWidget {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Login")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
//             TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password"), obscureText: true),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
//               },
//               child: Text("Login"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscure = true;
  String? errorMessage;

  void _attemptLogin() {
    final email = emailController.text.trim();
    final pass = passwordController.text;

    setState(() {
      errorMessage = null;
    });

    if (email.isEmpty || pass.isEmpty) {
      setState(() {
        errorMessage = "Email and password cannot be empty.";
      });
      return;
    }
    // TODO: Replace with real auth logic (Firebase etc.)
    if (!email.contains('@') || pass.length < 6) {
      setState(() {
        errorMessage = "Enter valid email and password (min 6 chars).";
      });
      return;
    }

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) =>  HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(20);
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Content
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  // Logo / Title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.school, size: 40, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        "Scholarship Finder",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // Card container
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: radius,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 16,
                          offset: const Offset(0, 8),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "Welcome Back",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Login to continue to your dashboard",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 20),

                        // Email field
                        TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email_outlined),
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Password field
                        TextField(
                          controller: passwordController,
                          obscureText: obscure,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock_outline),
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            suffixIcon: IconButton(
                              icon: Icon(
                                obscure ? Icons.visibility_off : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Forgot password + error
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (errorMessage != null)
                              Expanded(
                                child: Text(
                                  errorMessage!,
                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 12),
                                ),
                              ),
                            TextButton(
                              onPressed: () {
                                // TODO: Forgot password flow
                              },
                              child: const Text("Forgot password?"),
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  textStyle: const TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // Login button
                        ElevatedButton(
                          onPressed: _attemptLogin,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            elevation: 4,
                            backgroundColor: const Color(0xFF5B86E5),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),

                        const SizedBox(height: 12),

                        // Divider
                        Row(
                          children: [
                            Expanded(child: Divider(color: Colors.grey.shade300)),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text("or"),
                            ),
                            Expanded(child: Divider(color: Colors.grey.shade300)),
                          ],
                        ),
                        const SizedBox(height: 12),

                        // Create account
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              // TODO: Navigate to signup
                            },
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black87),
                                children: [
                                  TextSpan(text: "Don't have an account? "),
                                  TextSpan(
                                    text: "Sign up",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Optional extra info / footer
                  const Text(
                    "By logging in you agree to our Terms & Conditions",
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}