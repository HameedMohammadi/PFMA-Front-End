import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.settings,
                color: Colors.white), // Settings icon
            onSelected: (value) {
              // Perform actions based on selection
              switch (value) {
                case 'Profile Settings':
                  print('Profile Settings Clicked');
                  break;
                case 'Notifications':
                  print('Notifications Clicked');
                  break;
                case 'Dark Mode':
                  print('Dark Mode Clicked - To be implemented');
                  break;
                case 'Logout':
                  print('Logout Clicked');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'Profile Settings',
                  child: Text('Profile Settings'),
                ),
                const PopupMenuItem<String>(
                  value: 'Notifications',
                  child: Text('Notifications'),
                ),
                const PopupMenuItem<String>(
                  value: 'Dark Mode',
                  child: Text('Dark Mode'),
                ),
                const PopupMenuItem<String>(
                  value: 'Logout',
                  child: Text('Logout'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today Report",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Active Calories and Cycling section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatCard("Active calories", "645 Cal", Colors.white),
                _buildCyclingCard(),
              ],
            ),
            const SizedBox(height: 20),

            // Training Time and Heart Rate section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCircularStatCard("Training time", "80%", Colors.purple),
                _buildStatCard("Heart Rate", "79 Bpm", Colors.red.shade100),
              ],
            ),
            const SizedBox(height: 20),

            // Steps, Sleep, and Water section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStepsCard(),
                _buildStatCard("Sleep", "7 hrs", Colors.purple.shade100),
                _buildStatCard("Water", "6/8 Cups", Colors.blue.shade100),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, Color color) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCyclingCard() {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.directions_bike, color: Colors.white),
              SizedBox(width: 5),
              Text(
                "Cycling",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset('assets/images/map_image.png',
              height: 50), // Placeholder for cycling map image
        ],
      ),
    );
  }

  Widget _buildCircularStatCard(String title, String value, Color color) {
    return Container(
      width: 150,
      height: 150,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title),
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                value: 0.8,
                strokeWidth: 10,
                color: color,
              ),
              Text(value),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStepsCard() {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Steps"),
          const SizedBox(height: 10),
          const Text(
            "999/2000",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(height: 5),
          LinearProgressIndicator(
            value: 999 / 2000,
            color: Colors.orange,
            backgroundColor: Colors.orange.shade200,
          ),
          const SizedBox(height: 10),
          const Text("Keep it Up!", style: TextStyle(color: Colors.orange)),
        ],
      ),
    );
  }
}
