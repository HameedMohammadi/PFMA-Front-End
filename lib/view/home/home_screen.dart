import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning 🔥",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Text(
              "Hameedullah",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Workout card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hand Training",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black), // Change to black
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.local_fire_department,
                                    color: Colors.black), // Change to black
                                SizedBox(width: 5),
                                Text("600 Kcal",
                                    style: TextStyle(
                                        color:
                                            Colors.black)), // Change to black
                              ],
                            ),
                            const SizedBox(width: 10),
                            const Row(
                              children: [
                                Icon(Icons.timer,
                                    color: Colors.black), // Change to black
                                SizedBox(width: 5),
                                Text("40 Min",
                                    style: TextStyle(
                                        color:
                                            Colors.black)), // Change to black
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.play_circle_fill,
                                  color: Colors.black,
                                  size: 36), // Change to black
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Today Plan Section
                  const Text(
                    "Today Plan",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  // Plan Cards
                  PlanCard(
                    exercise: "Push Up",
                    reps: "100 Push up a day",
                    progress: 45,
                    level: "Intermediate",
                  ),
                  PlanCard(
                    exercise: "Sit Up",
                    reps: "20 Sit up a day",
                    progress: 75,
                    level: "Beginner",
                  ),
                  PlanCard(
                    exercise: "Knee Push Up",
                    reps: "20 Sit up a day",
                    progress: 25,
                    level: "Beginner",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlanCard extends StatelessWidget {
  final String exercise;
  final String reps;
  final int progress;
  final String level;

  const PlanCard({
    super.key,
    required this.exercise,
    required this.reps,
    required this.progress,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        leading: Image.asset(
          'assets/images/$exercise.jpg', // Use appropriate image paths
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title:
            Text(exercise, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(reps),
            const SizedBox(height: 5),
            LinearProgressIndicator(
              value: progress / 100,
              color: Colors.green,
              backgroundColor: Colors.grey.shade300,
            ),
          ],
        ),
        trailing: Text(level),
      ),
    );
  }
}
