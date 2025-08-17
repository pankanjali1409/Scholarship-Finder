// import 'package:flutter/material.dart';
//
// class CareerQuizScreen extends StatefulWidget {
//   @override
//   _CareerQuizScreenState createState() => _CareerQuizScreenState();
// }
//
// class _CareerQuizScreenState extends State<CareerQuizScreen> {
//   int questionIndex = 0;
//   int score = 0;
//
//   final questions = [
//     {
//       'question': 'Do you like solving logical problems?',
//       'yesScore': 2,
//       'noScore': 0,
//     },
//     {
//       'question': 'Do you enjoy creative activities?',
//       'yesScore': 2,
//       'noScore': 0,
//     },
//     {
//       'question': 'Are you good at helping people?',
//       'yesScore': 2,
//       'noScore': 0,
//     },
//   ];
//
//   void answer(bool yes) {
//     setState(() {
//       score += yes ? questions[questionIndex]['yesScore'] as int : questions[questionIndex]['noScore'] as int;
//       questionIndex++;
//     });
//   }
//
//   String getResult() {
//     if (score >= 5) return "Career Suggestion: Engineer";
//     if (score >= 3) return "Career Suggestion: Designer";
//     return "Career Suggestion: Social Worker";
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Career Quiz")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: questionIndex < questions.length
//             ? Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(questions[questionIndex]['question'] as String,
//                 style: TextStyle(fontSize: 18)),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: () => answer(true), child: Text("Yes")),
//             ElevatedButton(onPressed: () => answer(false), child: Text("No")),
//           ],
//         )
//             : Center(child: Text(getResult(), style: TextStyle(fontSize: 20))),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CareerQuizScreen extends StatefulWidget {
  const CareerQuizScreen({super.key});

  @override
  State<CareerQuizScreen> createState() => _CareerQuizScreenState();
}

class _CareerQuizScreenState extends State<CareerQuizScreen> {
  int questionIndex = 0;
  int score = 0;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Do you like solving logical problems?',
      'yesScore': 2,
      'noScore': 0,
    },
    {
      'question': 'Do you enjoy creative activities?',
      'yesScore': 2,
      'noScore': 0,
    },
    {
      'question': 'Are you good at helping people?',
      'yesScore': 2,
      'noScore': 0,
    },
    {
      'question': 'Do you like teaching for students?',
      'yesScore': 2,
      'noScore': 0,
    },
    {
      'question': 'Do you enjoy visual storytelling or crafting experiences (UI/UX)?',
      'yesScore': 2,
      'noScore': 0,
    },
    {
      'question': 'Are you good at biology?',
      'yesScore': 2,
      'noScore': 0,
    },
    {
      'question': 'Do you like about desiging?',
      'yesScore': 2,
      'noScore': 0,
    },

  ];

  void answer(bool yes) {
    setState(() {
      score += yes
          ? (questions[questionIndex]['yesScore'] as int)
          : (questions[questionIndex]['noScore'] as int);
      questionIndex++;
    });
  }

  String getResultTitle() {
    if (score >= 7) return "Engineer";
    if (score >= 5) return "Doctor";
    if (score >= 4) return "Teacher";
    if (score >= 2) return "Designer";
    return "Social Worker";
  }

  String getResultDescription() {
    if (score >= 5) {
      return "You have strong analytical skills and problem-solving mindset. Engineering could be a great fit.";
    }
    if (score >= 3) {
      return "You enjoy creativity and expression. A career in design might suit your strengths.";
    }
    return "You care about people and community. Social work or service-oriented fields are a good match.";
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDone = questionIndex >= questions.length;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 8),
                  child: Row(
                    children: const [
                      BackButton(color: Colors.white),
                      SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          "Career Quiz",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(Icons.assignment_ind, color: Colors.white),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    isDone
                        ? "Your result"
                        : "Question ${questionIndex + 1} of ${questions.length}",
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ),
                const SizedBox(height: 8),
                // Progress bar
                LinearProgressIndicator(
                  value: (questionIndex) / (questions.length),
                  backgroundColor: Colors.white24,
                  color: Colors.white,
                  minHeight: 6,
                ),
                const SizedBox(height: 20),
                // Content
                Expanded(
                  child: isDone ? _buildResultCard() : _buildQuestionCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionCard() {
    final current = questions[questionIndex];
    return Column(
      children: [
        Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 6,
          margin: const EdgeInsets.only(top: 12),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(
                  Icons.question_mark_rounded,
                  size: 48,
                  color: Color(0xFF5B86E5),
                ),
                const SizedBox(height: 12),
                Text(
                  current['question'] as String,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => answer(true),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF5B86E5),
                          elevation: 3,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Yes",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => answer(false),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF5B86E5),
                          elevation: 3,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "No",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        // Optional tip or hint
        const Text(
          "Answer honestly to get the best suggestion.",
          style: TextStyle(color: Colors.white70),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildResultCard() {
    final title = getResultTitle();
    final desc = getResultDescription();
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8,
        margin: const EdgeInsets.symmetric(vertical: 24),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.emoji_events, size: 60, color: Color(0xFF5B86E5)),
              const SizedBox(height: 12),
              Text(
                "Suggested Career",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 6),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3A3A3A)),
              ),
              const SizedBox(height: 12),
              Text(
                desc,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: resetQuiz,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF36D1DC),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text(
                  "Retake Quiz",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Go Back"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
