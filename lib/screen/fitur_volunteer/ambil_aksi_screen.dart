import 'dart:io';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sociops/widget/alert_dialog.dart';

class AmbilAksiScreen extends StatefulWidget {
  const AmbilAksiScreen({super.key});

  @override
  State<AmbilAksiScreen> createState() => _AmbilAksiScreenState();
}

class _AmbilAksiScreenState extends State<AmbilAksiScreen> {
  final linkController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  List<XFile>? _imageFileList;
  dynamic _pickImageError;

  Future<void> _onImageButtonPressed(ImageSource source) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _setImageFileListFromFile(pickedFile);
        });
      }
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
    // ignore: use_build_context_synchronously
    Navigator.of(context).pop();
  }

  void _setImageFileListFromFile(XFile? file) {
    if (file != null) {
      setState(() {
        _imageFileList = [file];
      });
    }
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: 300.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          const Text(
            'Pilih Foto atau Video',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  _onImageButtonPressed(ImageSource.camera);
                },
                icon: const Icon(
                  Icons.camera,
                  color: Color(0XFF444CE7),
                ),
                label: const Text(
                  'Kamera',
                  style: TextStyle(
                    color: Color(0XFF444CE7),
                  ),
                ),
              ),
              const SizedBox(width: 50),
              TextButton.icon(
                onPressed: () {
                  _onImageButtonPressed(ImageSource.gallery);
                },
                icon: const Icon(
                  Icons.image,
                  color: Color(0XFF444CE7),
                ),
                label: const Text(
                  'Galeri',
                  style: TextStyle(
                    color: Color(0XFF444CE7),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.lightBlue[50],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            splashRadius: 25,
            splashColor: Colors.blueAccent[100],
            icon: const Icon(
              Icons.keyboard_backspace,
              color: Color(0XFF444CE7),
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Ambil aksi',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // setState(() {
              //   state ? Icons.bookmark_border_outlined : Icons.bookmark;
              // });
            },
            splashRadius: 25,
            splashColor: Colors.blueAccent[100],
            icon: const Icon(
              Icons.bookmark_border_outlined,
              color: Color(0XFF444CE7),
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 187, 233, 255)),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                horizontalTitleGap: 10,
                minVerticalPadding: 10,
                leading: Image.asset(
                  'assets/camera-taking.png',
                ),
                title: Text(
                  'Langkah pertama',
                  style: GoogleFonts.inter(
                      fontSize: 16, color: const Color(0XFF444CE7)),
                ),
                subtitle: Text(
                  'Ambil sebuah foto saat kamu akan melakukan perjalanan dengan memakai sabuk pengaman secara tepat dan benar',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 187, 233, 255)),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                horizontalTitleGap: 10,
                minVerticalPadding: 10,
                leading: Image.asset(
                  'assets/carousel-screen1.png',
                ),
                title: Text(
                  'Langkah kedua',
                  style: GoogleFonts.inter(
                      fontSize: 16, color: const Color(0XFF444CE7)),
                ),
                subtitle: Text(
                  'Buatlah caption yang menjelaskan bagaimana kamu peduli dengan keselamatan saat berkendara dari hal yang kecil seperti menggunakan sabuk pengaman. Cantumkan tagar #SampaiTujuanDenganAman dan tag akun @Hyundai di sosial media kamu',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 187, 233, 255)),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                horizontalTitleGap: 10,
                minVerticalPadding: 10,
                leading: Image.asset(
                  'assets/taking-photo.png',
                ),
                title: Text(
                  'Langkah ketiga',
                  style: GoogleFonts.inter(
                      fontSize: 16, color: const Color(0XFF444CE7)),
                ),
                subtitle: Text(
                  'Posting foto dan caption yang telah kamu buat ke media sosial kamu. Jika sudah selesai, screenshoot bukti kamu telah memposting challenge ini di media sosial kamu. Jangan lupa untuk mencantumkan link media sosial yang kamu gunakan pada kolom di bawah ini.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
              child: Divider(
                color: Colors.black45,
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.topLeft,
              child: Text(
                'Upload bukti postingan',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 16),
            if (_imageFileList != null)
              Center(
                child: Image.file(
                  File(_imageFileList![0].path),
                  width: 372,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              )
            else
              //
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => bottomSheet(),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  decoration: BoxDecoration(
                    // image: DecorationImage(image: placeholder),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue[50],
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.photo_library_outlined,
                            color: Color(0XFF444CE7),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            'Tambah foto atau video',
                            style: GoogleFonts.inter(
                              color: const Color(0XFF444CE7),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[50],
              ),
              child: TextField(
                controller: linkController,
                style: GoogleFonts.inter(
                  color: const Color(0XFF444CE7),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                decoration: InputDecoration.collapsed(
                  hintText: 'Tambahkan link',
                  hintStyle: GoogleFonts.inter(
                    color: const Color(0XFF444CE7),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
            onPressed: () {
              if (linkController.text.isEmpty) {
                Alert().errDialog(context);
              } else {
                Alert().doneAlert(context);
              }
            },
            style: ButtonStyle(
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0XFF444CE7)),
              padding: const MaterialStatePropertyAll(
                EdgeInsets.all(16),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            child: Text(
              'Simpan',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  // color: const Color(0XFF444CE7),
                  fontWeight: FontWeight.w600),
            )),
      ),
    );
  }
}
