import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_beranda/round_button.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';
import 'package:sociops/screen/home_screen.dart';
import 'package:sociops/screen/explore_screen.dart';

class NotificationPage extends StatelessWidget {
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Notifikasi',
                    style: Styles.organizerTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomNotificationButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNotificationButton extends StatefulWidget {
  @override
  _CustomNotificationButtonState createState() =>
      _CustomNotificationButtonState();
}

class _CustomNotificationButtonState extends State<CustomNotificationButton> {
  bool isFollowing = false;

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),
          Center(
            child: Column(
              children: [
                SizedBox(height: 16),
                SizedBox(
                  width: 400,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'assets/notifikasi.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'You have no notifications. Follow program to get updated notifications',
                  style: Styles.resultTex,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExploreScreen()),
              );
            },
            child: Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.arrowColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Eksplor Program',
                    style: TextStyle(
                      color: AppColors.backgroundColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
