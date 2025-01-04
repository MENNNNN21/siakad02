import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SizedBox(height: 20),
              StatisticsCard(),
              SizedBox(height: 20),
              FeatureGrid(),
              SizedBox(height: 20),
              NavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String userName;
  final String program;
  final String institution;
  final String logoUrl;
  final String avatarUrl;

  const Header({
    Key? key,
    this.userName = 'Dadang Sapudin',
    this.program = 'Manajemen Informatika (D3)',
    this.institution = 'LP3I BANDUNG',
    this.logoUrl =
        'https://dashboard.codeparrot.ai/api/assets/Z2qaOY6CYQNjI8ey',
    this.avatarUrl =
        'https://dashboard.codeparrot.ai/api/assets/Z2qaOY6CYQNjI8ez',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 412,
      height: 174,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://dashboard.codeparrot.ai/api/assets/Z2qaOo6CYQNjI8e0'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22, top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo
            Image.network(
              logoUrl,
              width: 55,
              height: 71.74,
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    userName,
                    style: const TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    program,
                    style: const TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 10,
                      letterSpacing: 0.5,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    institution,
                    style: const TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 10,
                      letterSpacing: 0.5,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Avatar
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Image.network(
                avatarUrl,
                width: 50,
                height: 50.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatisticsCard extends StatelessWidget {
  final double gpa;
  final int credits;

  const StatisticsCard({
    Key? key,
    this.gpa = 3.5,
    this.credits = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFF87CEFA), // Light blue background
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStatColumn(
            value: gpa.toString(),
            label: 'IP Kumulatif',
          ),
          Container(
            width: 1,
            height: 67.37,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://dashboard.codeparrot.ai/api/assets/Z2qaSo6CYQNjI8e2'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          _buildStatColumn(
            value: credits.toString(),
            label: 'SKS TEMPUH',
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn({
    required String value,
    required String label,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontFamily: 'Arial',
            fontSize: 20,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.5,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Arial',
            fontSize: 14,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.5,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 367,
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            icon: 'https://dashboard.codeparrot.ai/api/assets/Z2qaUo6CYQNjI8e3',
            label: 'Beranda',
            iconWidth: 27,
            iconHeight: 25.36,
          ),
          _buildNavItem(
            icon: 'https://dashboard.codeparrot.ai/api/assets/Z2qaU46CYQNjI8e4',
            label: 'Notifikasi',
            iconWidth: 27,
            iconHeight: 27,
          ),
          _buildNavItem(
            icon: 'https://dashboard.codeparrot.ai/api/assets/Z2qaVI6CYQNjI8e5',
            label: 'Profil Saya',
            iconWidth: 27,
            iconHeight: 25.36,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String icon,
    required String label,
    required double iconWidth,
    required double iconHeight,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          icon,
          width: iconWidth,
          height: iconHeight,
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Arial',
            fontSize: 11,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            height: 1.45, // 16px line height / 11px font size
            color: Color(0xFF000000),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class FeatureGrid extends StatelessWidget {
  const FeatureGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 299,
      height: 296,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        padding: const EdgeInsets.all(10),
        children: [
          _buildFeatureItem(
            'assets/gambarJadwal.png',
            'Jadwal',
            'assets/backgroundFitur.png',
          ),
          _buildFeatureItem(
            'assets/gambarNilai.png',
            'Nilai',
            'assets/backgroundFitur.png',
          ),
          _buildFeatureItem(
            'assets/gambarBiayaKuliah.png',
            'Biaya Kuliah',
            'assets/backgroundFitur.png',
          ),
          _buildFeatureItem(
            'assets/gambarPresensi.png',
            'Presensi',
            'assets/backgroundFitur.png',
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String iconPath, String label, String bgPath) {
    return Container(
      width: 110,
      height: 110,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            bgPath, // Use Image.asset for the background image
            width: 110,
            height: 110,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconPath, // Use Image.asset for the icon
                width: 63,
                height: 63,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: const TextStyle(
                  fontFamily: 'Alike',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  height: 1.0, // lineHeight / fontSize
                  color: Color(0xFF000000),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
