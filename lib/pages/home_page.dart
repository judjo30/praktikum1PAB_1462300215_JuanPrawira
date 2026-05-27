import 'package:flutter/material.dart';
import '../data/doctor_data.dart';
import '../widgets/bottom_nav_bar.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> categories = const [
    {'title': 'Dokter Umum', 'icon': Icons.medical_services},
    {'title': 'Dokter Gigi', 'icon': Icons.health_and_safety},
    {'title': 'Dokter Anak', 'icon': Icons.child_care},
    {'title': 'Dokter Hewan', 'icon': Icons.pets},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.arrow_back, size: 22),
                  Expanded(
                    child: Center(
                      child: Text(
                        'HealthHub',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(width: 22),
                ],
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                height: 145,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HealthHub:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Your health partner',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: doctorList.length,
                  itemBuilder: (context, index) {
                    final doctor = doctorList[index];

                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(doctor.imageUrl),
                        ),
                        title: Text(
                          doctor.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(doctor.specialist),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(doctor: doctor),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(selectedIndex: 0),
    );
  }
}