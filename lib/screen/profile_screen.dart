import 'package:flutter/material.dart';
import 'package:flutter_2/componen/card_mahasiswa.dart';
import 'login_screen.dart';

class ProfileScreen extends StatefulWidget {
  final String nama;
  final String email;

  const ProfileScreen({super.key, required this.nama, required this.email});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Color _backgroundColor = const Color.fromARGB(255, 188, 104, 157);

  final List<Color> _colorOptions = [
    Colors.white,
    const Color.fromARGB(255, 1, 60, 102),
    const Color.fromARGB(255, 182, 20, 20),
    const Color.fromARGB(255, 93, 47, 100),
    const Color.fromARGB(255, 255, 162, 2),
    const Color.fromARGB(255, 60, 203, 122),
    const Color.fromARGB(255, 84, 105, 120),
    const Color.fromARGB(255, 68, 46, 35),
    const Color.fromARGB(255, 172, 70, 104),
  ];

  void _changeBackgroundColor() {
    setState(() {
      int currentIndex = _colorOptions.indexOf(_backgroundColor);
      if (currentIndex == -1 || currentIndex == _colorOptions.length - 1) {
        _backgroundColor = _colorOptions[0];
      } else {
        _backgroundColor = _colorOptions[currentIndex + 1];
      }
    });
  }

  void _backToLogin() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text('Profil Saya'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: _backToLogin,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardMahasiswa(
              nama: 'Rohma Fitri',
              nim: '230101069',
              kelas: 'TI-1A',
              prodi: 'Informatika',
            ),
            CardMahasiswa(
              nama: 'Monikka',
              nim: '230101070',
              kelas: 'SI-1B',
              prodi: 'Sistem Informasi',
            ),
            CardMahasiswa(
              nama: 'Malika',
              nim: '230101071',
              kelas: 'TRPL-2A',
              prodi: 'TRPL',
            ),
            CardMahasiswa(
              nama: 'Ananda',
              nim: '230101072',
              kelas: 'SI-1C',
              prodi: 'Sistem Informasi',
            ),
            const SizedBox(height: 30),
            _buildBackgroundButton(_changeBackgroundColor),
            const SizedBox(height: 20),
            _buildBackButton(_backToLogin),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundButton(VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 230, 109, 166),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: const Text('Warna Background', style: TextStyle(fontSize: 16)),
    );
  }

  Widget _buildBackButton(VoidCallback onPressed) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 220, 123, 173),
        side: const BorderSide(color: Color.fromARGB(255, 184, 98, 166)),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: const Text('Kembali', style: TextStyle(fontSize: 16)),
    );
  }
}
