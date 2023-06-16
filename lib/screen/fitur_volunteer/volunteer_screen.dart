import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/widget/bottom_navbar_widget.dart';
import 'package:sociops/widget/card_volunteer.dart';
import 'package:sociops/widget/cekbo.dart';
import 'package:sociops/widget/choose_filter.dart';

class VolunteerScreen extends StatefulWidget {
  const VolunteerScreen({super.key});

  @override
  State<VolunteerScreen> createState() => _VolunteerScreenState();
}

class _VolunteerScreenState extends State<VolunteerScreen> {
  int _selectedNavbar = 0;

  void _changeSelectedNavbar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Volunteer',
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
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 48,
                        width: 276,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Cari',
                            filled: true,
                            fillColor: Color(0XFFF9FAFB),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(56)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.swap_vert_rounded,
                          color: Color(0xFF444CE7),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return ChooseFilter();
                              });
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.filter_list_sharp,
                            color: Color(0xFF444CE7)),
                        onPressed: () {
                          // setState(() {});
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              context: context,
                              builder: (context) {
                                return Checkboxcon();
                              });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 94,
                        height: 44,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF444CE7),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  side: const BorderSide(
                                    color: Color(0xFF444CE7),
                                  )),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Semua',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 92,
                        height: 44,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  side: const BorderSide(
                                    color: Color(0xFF444CE7),
                                  )),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Umum',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF444CE7),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 106,
                        height: 44,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  side: const BorderSide(
                                    color: Color(0xFF444CE7),
                                  )),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Bencana',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF444CE7),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 123,
                        height: 44,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  side: const BorderSide(
                                    color: Color(0xFF444CE7),
                                  )),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Pendidikan',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF444CE7),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 119,
                        height: 44,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  side: const BorderSide(
                                    color: Color(0xFF444CE7),
                                  )),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Kesehatan',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF444CE7),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hasil pencarian',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '39 ditemukan',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF444CE7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                CardVolunteer().cardVolunter(context),
                const SizedBox(height: 12),
                CardVolunteer().cardVolunter(context),
                const SizedBox(height: 12),
                CardVolunteer().cardVolunter(context),
                const SizedBox(height: 12),
                CardVolunteer().cardVolunter(context),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbarWidget(
        onTap: _changeSelectedNavbar,
        currentIndex: _selectedNavbar,
      ),
    );
  }
}
