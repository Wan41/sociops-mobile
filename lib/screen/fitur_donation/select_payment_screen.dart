import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_donation/confirm_payment_screen.dart';

class SelectPaymentScreen extends StatefulWidget {
  const SelectPaymentScreen({super.key});

  @override
  State<SelectPaymentScreen> createState() => _SelectPaymentScreenState();
}

class _SelectPaymentScreenState extends State<SelectPaymentScreen> {
  final List<String> items = [
    'Rp2.000',
    'Rp5.000',
    'Rp10.000',
    'Rp15.000',
    'Rp20.000',
    'Rp25.000',
    'Rp50.000',
    'Rp75.000',
    'Rp100.000',
    'Rp150.000',
    'Rp200.000',
    'Rp300.000',
  ];

  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Pilih jumlah pembayaran',
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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Pilih berapa nominal donasi yang ingin Anda donasikan',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 310,
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 13,
                  childAspectRatio: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_selectedIndex == index) {
                          _selectedIndex = -1;
                        } else {
                          _selectedIndex = index;
                        }
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 26),
                      decoration: BoxDecoration(
                        color: _selectedIndex == index
                            ? const Color(0XFF444CE7)
                            : const Color(0XFFEEF4FF),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        items[index],
                        style: TextStyle(
                          color: _selectedIndex == index
                              ? Colors.white
                              : const Color(0XFF444CE7),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Atau',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 396,
              height: 72,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ketik jumlah donasi',
                  filled: true,
                  fillColor: const Color(0XFFF9FAFB),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ConfirmPaymentScreen()),
              );
            },
            child: const Text(
              'Pilih pembayaran',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
