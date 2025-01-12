import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                "10 Januari 2025",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pembayaran SPP bulan Januari",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Assalamualaikum Wr.Wb.\n\nKami informasikan bagi mahasiswa Kelas Reguler yang belum melakukan Pembayaran SPP bulan Januari mohon untuk segera dibayarkan ya. Dikarenakan akan segera jatuh tempo di tanggal 10 Januari 2025. \n\nKami ucapkan terimakasih bagi mahasiswa/i yang telah melakukan pembayaran.",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Hormat kami,\nBagian Akademik",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.jpg'), // Tambahkan gambar default di folder assets
            ),
            SizedBox(height: 16),
            Text(
              "Lukman Nulhakim",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("NIM: 202302107"),
            Text("Prodi: Management Informatika"),
            Text("Semester: III"),
            Text("Angkatan: 2023"),
          ],
        ),
      ),
    );
  }
}