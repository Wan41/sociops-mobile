import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/edit_profile_screen.dart';
import 'package:sociops/screen/help_screen.dart';
import 'package:sociops/screen/notification_screen.dart';
import 'package:sociops/screen/security_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Pengaturan',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 16.0),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfileScreen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 20, top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EditProfileScreen()),
                                  );
                                },
                                icon: const Icon(Icons.edit_outlined),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Edit Profile',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.navigate_next,
                            color: Color(0XFF444CE7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 20, top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NotificationScreen()),
                                  );
                                },
                                icon: const Icon(Icons.notifications_outlined),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Notifikasi',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.navigate_next,
                            color: Color(0XFF444CE7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecurityScreen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 20, top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SecurityScreen()),
                                  );
                                },
                                icon: const Icon(Icons.security_outlined),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Keamanan',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.navigate_next,
                            color: Color(0XFF444CE7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HelpScreen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 20, top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HelpScreen()),
                                  );
                                },
                                icon: const Icon(Icons.help_outline_outlined),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Bantuan',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.navigate_next,
                            color: Color(0XFF444CE7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    showdialog();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  showdialog();
                                },
                                icon: const Icon(Icons.logout_outlined),
                                color: Colors.red,
                              ),
                              //
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Keluar',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future showdialog() {
    return showDialog(
      barrierDismissible: false,
      barrierColor: Colors.black54,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.spaceAround,
          alignment: Alignment.bottomCenter,
          icon: const Icon(Icons.logout_outlined),
          iconColor: Colors.red,
          title: const Text('Keluar'),
          content: const Text(
            'Apakah Anda yakin ingin keluar? Anda masih dapat masuk kapan pun Anda mau',
            textAlign: TextAlign.center,
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
                  child: Text('Batalkan'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context); // Menutup dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfileScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(16)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
                  child: Text(
                    'Keluar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
