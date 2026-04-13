import 'package:flutter/material.dart';
import '../../widgets/attendance_card.dart';
import '../../widgets/section_title.dart';
import '../../widgets/fade_slide.dart';
import '../../utils/app_theme.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final courses = [
      {
        "name": "Applied Physics",
        "percentage": 92.0,
        "remaining": 11,
        "semester": "Spring 2026"
      },
      {
        "name": "Theory of Automata",
        "percentage": 91.0,
        "remaining": 10,
        "semester": "Spring 2026"
      },
      {
        "name": "Expository Writing",
        "percentage": 79.0,
        "remaining": 7,
        "semester": "Spring 2026"
      },
      {
        "name": "Advanced DBMS",
        "percentage": 92.0,
        "remaining": 9,
        "semester": "Spring 2026"
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,

      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔹 HEADER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Attendance",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey.shade300,
                  child: const Icon(Icons.person, color: Colors.black),
                ),
              ],
            ),

            const SizedBox(height: 6),

            const Text(
              "Track your course attendance",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 20),

            const SectionTitle(title: "Your Courses"),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  final course = courses[index];

                  return FadeSlide(
                    delay: index * 100,
                    child: AttendanceCard(
                      courseName: course["name"] as String,
                      percentage: course["percentage"] as double,
                      remainingAbsences: course["remaining"] as int,
                      semester: course["semester"] as String,
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