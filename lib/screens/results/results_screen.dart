import 'package:flutter/material.dart';
import '../../widgets/gpa_card.dart';
import '../../widgets/grade_tile.dart';
import '../../widgets/gpa_line_chart.dart';
import '../../widgets/fade_slide.dart';
import '../../widgets/section_title.dart';
import '../../utils/app_theme.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔹 HEADER
            const Text(
              "Results",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Track your academic performance",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // 🔹 GPA CARDS
            Row(
              children: const [
                Expanded(
                  child: GpaCard(title: "CGPA", value: 3.42),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: GpaCard(title: "Semester GPA", value: 3.55),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 GRAPH
            const SectionTitle(title: "Performance Trend"),
            const SizedBox(height: 10),
            FadeSlide(
              delay: 100,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const GpaLineChart(),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 GRADES
            const SectionTitle(title: "Course Grades"),
            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: const [
                  GradeTile(course: "Expository Writing", grade: "A"),
                  GradeTile(course: "Computer Organization and Assembly Language", grade: "B+"),
                  GradeTile(course: "Theory of Automata", grade: "B+"),
                  GradeTile(course: "Applied Physics", grade: "A"),
                  GradeTile(course: "Advanced Database Management Systems", grade: "A"),
                  GradeTile(course: "Mobile Application Development", grade: "A-"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}