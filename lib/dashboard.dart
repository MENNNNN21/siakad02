import 'package:flutter/material.dart';
import 'profil.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  // List of screens for bottom navigation
  final List<Widget> _screens = [
    DashboardScreen(),
    InfoScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIAKAD MAHASISWA'),
        centerTitle: true,
      ),
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifikasi'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil Saya'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, // Handle tap
      ),
    );
  }
}
// Layar Dashboard
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dadang Sapudin',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Manajemen Informatika (D3)\nLP3I BANDUNG',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/avatar.png'), // Ganti dengan gambar avatar
                ),
              ],
            ),
          ),
          // Info IP dan SKS
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '3.5',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('IP Kumulatif'),
                  ],
                ),
                VerticalDivider(color: Colors.blue),
                Column(
                  children: [
                    Text(
                      '20',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('SKS TEMPUH'),
                  ],
                ),
              ],
            ),
          ),
          // Menu Utama
          Container(
            margin: EdgeInsets.all(16),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                MenuItem(
                  icon: Icons.calendar_today,
                  label: 'Jadwal',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JadwalScreen()),
                    );
                  },
                ),
                MenuItem(
                  icon: Icons.book,
                  label: 'Nilai',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NilaiScreen()),
                    );
                  },
                ),
                MenuItem(
                  icon: Icons.payment,
                  label: 'Biaya Kuliah',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BiayaScreen()),
                    );
                  },
                ),
                MenuItem(
                  icon: Icons.check_circle,
                  label: 'Presensi',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KehadiranScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  MenuItem({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            SizedBox(height: 8),
            Text(label, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}




class JadwalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jadwal')),
      body: Center(child: Text('Ini adalah halaman Jadwal')),
    );
  }
}

class NilaiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nilai')),
      body: Center(child: Text('Ini adalah halaman Nilai')),
    );
  }
}

class BiayaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Biaya Kuliah')),
      body: Center(child: Text('Ini adalah halaman Biaya Kuliah')),
<<<<<<< HEAD
=======
    );
  }
}

class KehadiranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Presensi')),
      body: Center(child: Text('Ini adalah halaman Presensi')),
>>>>>>> b035d1d1efc324bd257dc3dd6f2b5927e54a6424
    );
  }
}

class KehadiranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Presensi')),
      body: Center(child: Text('Ini adalah halaman Presensi')),
    );
  }
}