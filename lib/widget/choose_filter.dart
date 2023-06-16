import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseFilter extends StatefulWidget {
  const ChooseFilter({super.key});

  @override
  State<ChooseFilter> createState() => _ChooseFilterState();
}

class _ChooseFilterState extends State<ChooseFilter> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Choose filter',
              style:
                  GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 350,
              height: 35,
              child: Text(
                'Provinsi',
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF444CE7),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Jawa timur',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Jawa Barat',
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
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Jawa Tengah',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF444CE7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Kalimantan',
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
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sulawesi',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF444CE7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sumatra',
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
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 350,
              height: 35,
              child: Text(
                'Periode',
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF444CE7),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Harian',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Mingguan',
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
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Bulanan',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF444CE7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Tahunan',
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
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sulawesi',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF444CE7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            side: const BorderSide(
                              color: Color(0xFF444CE7),
                            )),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sumatra',
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
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 350,
              height: 35,
              child: Text(
                'Periode',
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF444CE7),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                SizedBox(
                  width: 180,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
