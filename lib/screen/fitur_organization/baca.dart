import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_organization/round_button.dart';
import 'package:sociops/screen/fitur_organization/profile.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class Baca extends StatelessWidget {
  const Baca();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 16),
              child: Row(
                children: [
                  RoundButton(
                    buttonColor: AppColors.primaryColor,
                    iconColor: AppColors.arrowColor,
                    icon: Icons.arrow_back,
                    onPressed: () {},
                  ),
                  SizedBox(width: 16),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Text(
                          'Berita terbaru',
                          style: Styles.organizerTextStyle,
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.bookmark_border,
                              color: AppColors.arrowColor,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            // Logic for sort button
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.share_outlined,
                              color: AppColors.arrowColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomFollowButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final String text;
  final Color color;

  const CategoryBox({
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.arrowColor,
          width: 1.0,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.arrowColor,
          ),
        ),
      ),
    );
  }
}

class CustomFollowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Seru! Salurkan Donasi Alat Kesenian untuk Anak-anak Desa Wagiri',
            style: Styles.result4,
          ),
          SizedBox(height: 8),
          Text(
            'By Nailul Izah',
            style: Styles.result5,
          ),
          SizedBox(height: 8),
          Text(
            '11 May 2023',
            style: Styles.result6,
          ),
          SizedBox(
            height: 10,
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Container(
              width: 55,
              height: 25,
              decoration: BoxDecoration(
                color: AppColors.Button,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('Donation', style: Styles.result7),
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: 500,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/hyundai.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Proin et euismod diam. Duis fermentum felis nisi, ut lobortis lectus mollis non. Integer pellentesque erat eu diam pharetra auctor id et nulla. Nam sodales arcu nec blandit fringilla. Ut vitae ligula vel lectus ultrices tempus ut id sem. Etiam egestas lacus scelerisque augue congue, sed rutrum sem lobortis. Pellentesque vel enim ante. Quisque hendrerit lobortis neque, ac tempor dui elementum vel. Duis vitae ante imperdiet, lacinia nulla sit amet, hendrerit erat. In ac lectus vulputate, pellentesque est et, interdum augue. Nam in sodales augue, non pellentesque orci. Nullam aliquet ante ut dolor molestie venenatis. Aliquam a erat quis nulla congue porttitor sit amet id nulla. Fusce pretium diam quam, vel consequat nibh feugiat id. Aenean laoreet auctor sollicitudin. Donec at sagittis nulla, sit amet lacinia eros.',
            style: Styles.resultTextStyle,
          ),
        ],
      ),
    );
  }
}
