import 'package:flutter/material.dart';
import '../data/doctor_data.dart';
import '../widgets/bottom_nav_bar.dart';

class DetailPage extends StatelessWidget {
  final DoctorData doctor;

  const DetailPage({
    super.key,
    required this.doctor,
  });

  void showConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFFFFF7FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.lightBlue[100],
                child: const Icon(
                  Icons.calendar_month,
                  color: Colors.blue,
                  size: 32,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Konfirmasi Janji Temu',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Ingin menjadwalkan\nkonsultasi dengan\n${doctor.name}?',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB9E0F7),
                        foregroundColor: Colors.black,
                      ),
                      child: const Text('Detail'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('OK'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back, size: 22),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(doctor.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctor.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          doctor.specialist,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red[400],
                    size: 28,
                  ),
                ],
              ),
              const SizedBox(height: 22),
              const Text(
                'JADWAL PRAKTIK',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                doctor.schedule,
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 20),
              const Text(
                'BIOGRAFI SINGKAT',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                doctor.bio,
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 18),
                  const Icon(Icons.star, color: Colors.amber, size: 18),
                  const Icon(Icons.star, color: Colors.amber, size: 18),
                  const Icon(Icons.star, color: Colors.amber, size: 18),
                  const Icon(Icons.star_half, color: Colors.amber, size: 18),
                  const SizedBox(width: 8),
                  Text(doctor.rating.toString()),
                ],
              ),
              const SizedBox(height: 55),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    showConfirmDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text('Buat Janji Temu'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(selectedIndex: 1),
    );
  }
}