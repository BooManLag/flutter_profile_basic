import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  // Constructor with optional key parameter
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile IconButton
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {
                    // Using GoRouter for navigation
                    GoRouter.of(context).go('/profile');
                  },
                  iconSize: 100,
                ),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 20, fontFamily: "Inter"),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Interests IconButton
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.star),
                  onPressed: () {
                    // Using GoRouter for navigation
                    GoRouter.of(context).go('/interests');
                  },
                  iconSize: 100,
                ),
                const Text('Interests',
                    style: TextStyle(fontSize: 20, fontFamily: "Inter")),
              ],
            ),
            const SizedBox(height: 20),

            // Skills IconButton
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.build),
                  onPressed: () {
                    // Using GoRouter for navigation
                    GoRouter.of(context).go('/skills');
                  },
                  iconSize: 100,
                ),
                const Text('Skills',
                    style: TextStyle(fontSize: 20, fontFamily: "Inter")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
