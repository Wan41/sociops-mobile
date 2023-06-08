import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FailedPaymentScreen extends StatefulWidget {
  const FailedPaymentScreen({super.key});

  @override
  State<FailedPaymentScreen> createState() => _FailedPaymentScreenState();
}

class _FailedPaymentScreenState extends State<FailedPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Notifikasi pembayaran',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 48),
            const Center(
              child: Image(
                image: AssetImage('assets/splash-screen1.png'),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Oh tidak, aksi kamu gagal!',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Maaf sepertinya ada kesalahan dalam mengupload aksi kamu, coba kembali untuk mengupload beberapa saat lagi.',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 150,
          child: Column(
            children: [
              const SizedBox(height: 16),
              SizedBox(
                width: 396,
                height: 60,
                child: OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF444CE7),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Coba lagi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 396,
                height: 60,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Kembali ke beranda',
                    style: TextStyle(
                      color: Color(0xFF444CE7),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
