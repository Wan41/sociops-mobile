import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_home/filter_screen.dart';
import 'package:sociops/screen/fitur_home/urutan_screen.dart';
import 'package:sociops/style/color_style.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Bookmark',
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
        child: Column(children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 220,
                    height: 40,
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          ColorStyle().buttonColor,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FilterScreen(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.filter_list_sharp,
                        color: ColorStyle().primaryblue,
                      ),
                      label: Text(
                        'Filter',
                        style: TextStyle(
                          color: ColorStyle().primaryblue,
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
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          ColorStyle().buttonColor,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UrutanScreen(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.swap_vert_outlined,
                        color: ColorStyle().primaryblue,
                      ),
                      label: Text(
                        'Urut',
                        style: TextStyle(
                          color: ColorStyle().primaryblue,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
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
                            "assets/bookmark (2).png",
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 86,
                                height: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32.0),
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Text(
                                    '3 HARI LAGI',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
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
                                      onPressed: () {
                                        CoolAlert.show(
                                          context: context,
                                          title: 'Hapus dari bookmark Anda?',
                                          type: CoolAlertType.confirm,
                                          text:
                                              'Yakin ingin menghapusnya dari bookmark Anda? Anda masih dapat menemukannya di jelajahi',
                                          confirmBtnText: 'Hapus',
                                          cancelBtnText: 'Batal',
                                          confirmBtnColor: ColorStyle().redtest,
                                          cancelBtnTextStyle: TextStyle(
                                            color: ColorStyle().primarydark,
                                          ),
                                        );
                                      },
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
                                width: 54,
                                height: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32.0),
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
                                width: 110,
                                height: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32.0),
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
                  width: 372,
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
                      'Donasi sekarang',
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
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0XFFFEE4E2),
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(children: [
              Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: 600,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "assets/galang dana page.png",
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  'SEGERA TUTUP',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
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
                                    onPressed: () {
                                      CoolAlert.show(
                                        context: context,
                                        title: 'Hapus dari bookmark Anda?',
                                        type: CoolAlertType.confirm,
                                        text:
                                            'Yakin ingin menghapusnya dari bookmark Anda? Anda masih dapat menemukannya di jelajahi',
                                        confirmBtnText: 'Hapus',
                                        cancelBtnText: 'Batal',
                                        confirmBtnColor: ColorStyle().redtest,
                                        cancelBtnTextStyle: TextStyle(
                                          color: ColorStyle().primarydark,
                                        ),
                                      );
                                    },
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
                                borderRadius: BorderRadius.circular(32.0),
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
                              width: 75,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
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
                                      'Hyundai',
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
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(right: 370),
                width: 85,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorStyle().buttonColor,
                  ),
                  borderRadius: BorderRadius.circular(32.0),
                  color: ColorStyle().backgroundfield,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFF444CE7),
                        size: Checkbox.width,
                      ),
                      Text(
                        'Indonesia',
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
              const SizedBox(height: 8),
              Text(
                'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: Text(
                  'Kegiatan kampanye online yang diadakan oleh Perusahaan Hyundai',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
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
                    'Daftar',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xFFD92D20),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
