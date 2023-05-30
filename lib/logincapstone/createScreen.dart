import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_and_create/logincapstone/style/colorStyle.dart';


class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: const BackButton(
            color: Color(0XFF444CE7),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/create.png'),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            'Buat Akun Baru!',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 24),
                          ),
                          tinggi,
                          Text(
                              'Buat akun Anda dan dapatkan akses pertama ke campaign dan komunitas Sociops',
                              style: GoogleFonts.inter()),
                          const SizedBox(height: 20),
                          SizedBox(
                            // margin: EdgeInsets.all(20),
                            height: 72,
                            width: 396,
                            child: Card(
                              color: ColorStyle().backgroundfield,
                              child: const Padding(
                                padding: EdgeInsets.all(12),
                                child: TextField(
                                  // controller: controler,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,

                                    // filled: true,
                                    // isDense: true,
                                    labelText: 'email',
                                  ),
                                  // hintText: 'nama'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 72,
                            width: 396,
                            child: Card(
                              color: Colors.grey[50],
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: TextField(
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  obscureText: isObscureText,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isObscureText = !isObscureText;
                                        });
                                      },
                                      icon: Icon(
                                        isObscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                    labelText: 'kata sandi',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          tinggi,
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                'Lupa Kata Sandi ',
                                style: TextStyle(
                                  color: ColorStyle().primarblue,
                                ),
                              ),
                            ),
                          ),
                          tinggi,
                          SizedBox(
                            width: 396,
                            height: 60,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text("Masuk")),
                          ),
                          tinggi,
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                const Divider(),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: const Text(
                                    'Atau lanjutkan dengan',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          tinggi,
                          SizedBox(
                            width: 396,
                            height: 60,
                            child: OutlinedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(color: Colors.red),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.phone_android_outlined),
                                    Text('Nomor telephone')
                                  ],
                                )),
                          ),
                          const SizedBox(height: 100),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Tidak punya akun ?"),
                              TextButton(
                                  onPressed: () {}, child: const Text('Buat Akun'))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
