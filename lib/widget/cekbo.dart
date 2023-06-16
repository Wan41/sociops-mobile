import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkboxcon extends StatefulWidget {
  const Checkboxcon({super.key});

  @override
  State<Checkboxcon> createState() => _CheckboxconState();
}

class _CheckboxconState extends State<Checkboxcon> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Urut berdasarkan:',
            style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
            child: Divider(
              color: Colors.grey,
            ),
          ),
          ListTile(
            title: Text(
              'Terbaru ke Terlama',
              style:
                  GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Checkbox(
              value: _isChecked1,
              onChanged: (value) {
                setState(() {
                  _isChecked1 = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Terlama ke terbaru',
              style:
                  GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Checkbox(
              value: _isChecked2,
              onChanged: (value) {
                setState(() {
                  _isChecked2 = value!;
                });
              },
            ),
          ),
          // tambahkan list tile lainnya sesuai kebutuhan
        ],
      ),
    );
  }
}
