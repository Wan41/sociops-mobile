import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/style/color_style.dart';


class Volunteer extends StatelessWidget {
  const Volunteer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Volunteer kamu',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 220,
                    height: 40,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF444CE7),
                        ),
                        shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.0),
                              side: const BorderSide(
                                width: 1.5, 
                                color: Color(0xFF444CE7),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Selesai',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SizedBox(
                    width: 220,
                    height: 40,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFFFFFF),
                        ),
                        shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.0),
                              side: const BorderSide(
                                width: 1.5, 
                                color: Color(0xFF444CE7),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Sedang berjalan',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: const Color(0xFF444CE7),
                        ), 
                      ), 
                    ), 
                  ),
                ),
              ]
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center, 
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0XFFFEE4E2),
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          width: 600,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "assets/volunteer page.png",
                              width: 10,
                              height: 10,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8,
                        right: 8,
                        bottom: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment:
                              MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 5, 
                                      color: ColorStyle().buttonColor,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                    color: ColorStyle().buttonColor,
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(
                                          Icons.bookmark_outlined,
                                          color: ColorStyle().primaryblue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 130),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 60,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                      BorderRadius.circular(32.0),
                                    color: ColorStyle().buttonColor,
                                  ),
                                  child: Center(
                                  child: Text(
                                    'Umum',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFF444CE7),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 120,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius:
                                    BorderRadius.circular(32.0),
                                  color: ColorStyle().buttonColor,
                                ),
                                child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.verified,
                                      color: Color(0xFF444CE7),
                                      size: Checkbox.width,
                                    ),
                                    Text(
                                      'SkilledUp Life',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF444CE7),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 500,
                height: 30,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFECFDF3),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                  child: Text(
                    '1 Aksi = Rp. 10.000',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color(0xFF039855),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.only(right: 30),
                alignment: Alignment.centerLeft,
                child: Text(
                  '#BisaBebasStunting: Donasi untuk Bantu Pengobatan',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp233.461.250',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '72%',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const LinearProgressIndicator(
                backgroundColor: Color(0XFFFEF3F2),
                color: Color(0XFFD92D20),
                value: 72 / 100,
                minHeight: 12,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 500,
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFFEF3F2),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Ditutup',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xFFD92D20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center, 
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0XFFFEE4E2),
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: 600,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "assets/volunteer page.png",
                          width: 10,
                          height: 10,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    right: 8,
                    bottom: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment:
                          MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5, 
                                  color: ColorStyle().buttonColor,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                color: ColorStyle().buttonColor,
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.bookmark_outlined,
                                      color: ColorStyle().primaryblue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 130),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 25,
                                decoration: BoxDecoration(
                                  borderRadius:
                                    BorderRadius.circular(32.0),
                                    color: Colors.white,
                                  ),
                                child: Center(
                                child: Text(
                                  'Umum',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF444CE7),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 120,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius:
                                    BorderRadius.circular(32.0),
                                    color: Colors.white,
                                ),
                                child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.verified,
                                      color: Color(0xFF444CE7),
                                      size: Checkbox.width,
                                    ),
                                    Text(
                                      'SkilledUp Life',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF444CE7),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
                SizedBox(
                  width: 500,
                  height: 30,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFECFDF3),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                    child: Text(
                      '1 Aksi = Rp. 10.000',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color(0xFF039855),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  margin: const EdgeInsets.only(right: 30),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '#BisaBebasStunting: Donasi untuk Bantu Pengobatan',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rp233.461.250',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '72%',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const LinearProgressIndicator(
                  backgroundColor: Color(0XFFFEF3F2),
                  color: Color(0XFFD92D20),
                  value: 72 / 100,
                  minHeight: 12,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 500,
                  height: 44,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFEF3F2),
                      ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Ditutup',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xFFD92D20),
                    ),
                  ),
                ),
              ),
            ]),
          )
        ]), 
      ),
    );
  }
}