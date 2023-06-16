import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_home/galang_dana_screen.dart';
import 'package:sociops/screen/fitur_home/histori_akun_screen.dart';
import 'package:sociops/screen/fitur_home/pencarian_terbaru_screen.dart';
import 'package:sociops/screen/fitur_home/volunteer_screen.dart';

class ActivitiesScren extends StatefulWidget {
  const ActivitiesScren({super.key});

  @override
  State<ActivitiesScren> createState() => _ActivitiesScrenState();
}

class _ActivitiesScrenState extends State<ActivitiesScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Aktivitas',
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
      body: Container(
        margin: const EdgeInsets.all(16),
        alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Campaign Kamu',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff444CE7),
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
                                TextButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const GalangDana()),
                                    );
                                  },
                                  icon: Image.asset('assets/galang dana.png'),
                                  label: Text(
                                    'Galang Dana',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const GalangDana(),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.navigate_next),
                              color: const Color(0XFF444CE7),
                            ),
                          ]
                        ),
                      ),
                    ),
                  ]
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff444CE7),
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
                                  TextButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Volunteer(),
                                        ),
                                      );
                                    },
                                    icon: Image.asset('assets/volunteerr.png'),
                                    label: Text(
                                      'Volunteer',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ]
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Volunteer(),
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.navigate_next),
                                color: const Color(0XFF444CE7),
                              ),
                            ]
                          ),
                        ),
                      ),
                    ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Penggunaan Akun',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 16),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff444CE7),
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
                                        TextButton.icon(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => const GalangDana(),
                                              ),
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.calendar_today_sharp,
                                            color: Color(0xff101828),
                                          ),
                                          label: Text(
                                            'Histori Akun',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ]
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const HistoriAkun(),
                                          ),
                                        );
                                      },
                                      icon: const Icon(Icons.navigate_next),
                                      color: const Color(0XFF444CE7),
                                    ),
                                  ]
                                ),
                              ),
                            ),
                          ]
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 16),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff444CE7),
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
                                        TextButton.icon(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => const HistoriAkun(),
                                              ),
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.search_sharp,
                                            color: Color(0xff101828),
                                          ),
                                          label: Text(
                                            'Pencarian Terbaru',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ]
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                        MaterialPageRoute(
                                          builder: (context) => const PencarianTerbaru(),
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.navigate_next),
                                    color: const Color(0XFF444CE7),
                                  ),
                                ]
                              ),
                            ),
                          ),
                        ]
                      ),
                    ]
                  ),
                ),
              ]
            ),
          ),  
        ); 
      }    
    }
