import 'package:flutter/material.dart';
import 'dashboard.dart'; // Import halaman Dashboard

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 917,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -118.44,
              left: -171.14,
              child: Image.asset(
                'assets/backgroundlogin.png',
                width: 768.62,
                height: 1130.93,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 396,
              left: 21,
              child: Container(
                width: 360,
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2F80ED),
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF2F80ED),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 309,
                      height: 40,
                      margin: EdgeInsets.only(left: 4.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/kolom.png'
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF2F80ED),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 309,
                      height: 40,
                      margin: EdgeInsets.only(left: 4.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/kolom.png'
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          // Logika untuk memverifikasi kredensial
                          String email = emailController.text;
                          String password = passwordController.text;

                          // Contoh data dummy untuk verifikasi
                          const String validEmail =
                              "user"; // Ganti dengan email valid
                          const String validPassword =
                              "password123"; // Ganti dengan password valid

                          if (email == validEmail &&
                              password == validPassword) {
                            // Jika email dan password benar, navigasi ke Dashboard
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()),
                            );
                          } else {
                            // Jika email atau password salah, tampilkan pesan kesalahan
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Email atau Password salah!'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                        child: Container(
                          width: 144,
                          height: 60,
                          margin: EdgeInsets.only(right: 4.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/boxlogin.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.36,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
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
