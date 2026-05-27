class DoctorData {
  final String name;
  final String specialist;
  final String schedule;
  final String bio;
  final String imageUrl;
  final double rating;

  DoctorData({
    required this.name,
    required this.specialist,
    required this.schedule,
    required this.bio,
    required this.imageUrl,
    required this.rating,
  });
}

List<DoctorData> doctorList = [
  DoctorData(
    name: 'dr. Ahmad Hidayat',
    specialist: 'Dokter Anak',
    schedule: 'Senin - Jumat, 08.00 - 17.00',
    bio: 'Dokter spesialis anak dengan pengalaman lebih dari 10 tahun.',
    imageUrl: 'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d',
    rating: 4.5,
  ),
  DoctorData(
    name: 'dr. Siti Maharani',
    specialist: 'Dokter Gigi',
    schedule: 'Senin - Kamis, 09.00 - 15.00',
    bio: 'Dokter spesialis gigi yang berpengalaman dalam perawatan gigi keluarga.',
    imageUrl: 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2',
    rating: 4.7,
  ),
  DoctorData(
    name: 'dr. Budi Santoso',
    specialist: 'Dokter Umum',
    schedule: 'Senin - Sabtu, 08.00 - 14.00',
    bio: 'Dokter umum yang melayani pemeriksaan kesehatan harian.',
    imageUrl: 'https://images.unsplash.com/photo-1622253692010-333f2da6031d',
    rating: 4.6,
  ),
  DoctorData(
    name: 'dr. Rina Lestari',
    specialist: 'Dokter Mata',
    schedule: 'Selasa - Jumat, 10.00 - 16.00',
    bio: 'Dokter spesialis mata untuk pemeriksaan dan konsultasi kesehatan mata.',
    imageUrl: 'https://images.unsplash.com/photo-1594824476967-48c8b964273f',
    rating: 4.8,
  ),
  DoctorData(
    name: 'dr. Fajar Pratama',
    specialist: 'Dokter Jantung',
    schedule: 'Senin - Jumat, 09.00 - 16.00',
    bio: 'Dokter spesialis jantung dengan fokus pada kesehatan kardiovaskular.',
    imageUrl: 'https://images.unsplash.com/photo-1607990281513-2c110a25bd8c',
    rating: 4.9,
  ),
  DoctorData(
    name: 'dr. Maya Anggraini',
    specialist: 'Dokter Kulit',
    schedule: 'Rabu - Sabtu, 10.00 - 17.00',
    bio: 'Dokter spesialis kulit untuk konsultasi kesehatan kulit dan wajah.',
    imageUrl: 'https://images.unsplash.com/photo-1651008376811-b90baee60c1f',
    rating: 4.6,
  ),
  DoctorData(
    name: 'dr. Andi Wijaya',
    specialist: 'Dokter Saraf',
    schedule: 'Senin - Kamis, 08.00 - 13.00',
    bio: 'Dokter spesialis saraf untuk pemeriksaan gangguan sistem saraf.',
    imageUrl: 'https://images.unsplash.com/photo-1537368910025-700350fe46c7',
    rating: 4.5,
  ),
  DoctorData(
    name: 'dr. Putri Amelia',
    specialist: 'Dokter Kandungan',
    schedule: 'Senin - Jumat, 11.00 - 17.00',
    bio: 'Dokter spesialis kandungan yang melayani konsultasi ibu dan kehamilan.',
    imageUrl: 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2',
    rating: 4.8,
  ),
  DoctorData(
    name: 'dr. Dimas Nugroho',
    specialist: 'Dokter THT',
    schedule: 'Selasa - Sabtu, 08.00 - 15.00',
    bio: 'Dokter spesialis THT untuk pemeriksaan telinga, hidung, dan tenggorokan.',
    imageUrl: 'https://images.unsplash.com/photo-1622902046580-2b47f47f5471',
    rating: 4.4,
  ),
  DoctorData(
    name: 'dr. Nadia Kirana',
    specialist: 'Dokter Hewan',
    schedule: 'Senin - Sabtu, 09.00 - 16.00',
    bio: 'Dokter hewan yang melayani pemeriksaan kesehatan hewan peliharaan.',
    imageUrl: 'https://images.unsplash.com/photo-1551601651-2a8555f1a136',
    rating: 4.7,
  ),
];