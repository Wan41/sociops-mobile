<<<<<<< HEAD
=======
import 'package:sociops/data/list_data.dart';
import 'package:sociops/widget/widget_color_choose.dart';
>>>>>>> f8a7b8ae0d73dd3fb91b9f658a4e6a09d3590054
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoseeFilter {
  int indexfil = 0;

  Future dialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // insetPadding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
          scrollable: true,
          title: const Text(
            'Choose Filter',
            textAlign: TextAlign.center,
          ),
          content: SizedBox(
            width: double.minPositive,
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  'Provinsi',
                  style: GoogleFonts.inter(fontWeight: FontWeight.w700),
                ),
                // GridView.builder(
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2),
                //   itemBuilder: (BuildContext context, index) {
                //     return Container(
                //       child: TextButton(
                //         style: WidgetColorchoose().btnCategoryStyle(
                //             index == indexfil ? true : false),
                //         onPressed: () {
                //           setState() {
                //             indexfil = DataList()
                //                 .provinsi
                //                 .indexOf(DataList().provinsi[index]);
                //           }
                //         },
                //         child: Text(DataList().provinsi[index]),
                //       ),
                //     );
                //   },
                // )
              ],
            ),
          ),
        );
      },
    );
  }
}
