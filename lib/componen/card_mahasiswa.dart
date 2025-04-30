import 'package:flutter/material.dart';

class CardMahasiswa extends StatelessWidget {
  const CardMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi, 
    required String kelas,
    
  });
  final String nama;
  final String nim;
  final String prodi;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20),
        child: Container(
          height: 200,
          width: 200,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(255, 210, 118, 212),
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.person,
                    size: 16,
                    color: Color.fromARGB(255, 231, 55, 190),
                  ),
                  const SizedBox(width: 5),
                  Text('Nama  : $nama'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.badge,
                    size: 16,
                    color: Color.fromARGB(255, 231, 55, 190),
                  ),
                  const SizedBox(width: 5),
                  Text('NIM   : $nim'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.school,
                    size: 16,
                    color: Color.fromARGB(255, 122, 7, 37),
                  ),
                  const SizedBox(width: 5),
                  Text('Prodi : $prodi'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
