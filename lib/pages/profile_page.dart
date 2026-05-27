import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget profileItem(IconData icon, String text) {
    return Container(
      height: 52,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.4),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 18),
          Icon(icon, color: Colors.blueAccent),
          const SizedBox(width: 28),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEFC),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE8EFFD),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(130),
                      bottomRight: Radius.circular(130),
                    ),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 45),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -45,
                  child: Container(
                    width: 95,
                    height: 95,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF7F7F7),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.person_outline,
                      size: 60,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            profileItem(Icons.person_outline, 'PAB 2025'),
            profileItem(Icons.phone_in_talk_outlined, '146210012345'),
            profileItem(Icons.email_outlined, 'pab2023@gmail.com'),
            profileItem(Icons.location_on_outlined, 'Surabaya'),
            profileItem(Icons.camera_alt_outlined, 'pab2023'),
            const Spacer(),
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Color(0xFFE8EFFD),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(160),
                  topRight: Radius.circular(160),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(selectedIndex: 2),
    );
  }
}