import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Profil',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingScreen()),
                );
              },
              child: const Icon(
                Icons.settings,
                color: Color(0XFF444CE7),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          children: const [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/pp.jpg'),
                ),
                SizedBox(height: 16),
                Text(
                  'Muhammad Rifki Muzakki',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '12',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '32',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '17',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Galang Dana',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Volunteer',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Mengikuti',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Divider(),
                SizedBox(height: 8),
                Text(
                  'Tentang saya',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Halo, saya seseorang yang sangat tertarik untuk mengikuti kampanye social dan suka menolong orang lain yang membetuhkan :).',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
