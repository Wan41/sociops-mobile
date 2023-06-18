// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_organization/galang_dana.dart';
import 'package:sociops/screen/fitur_organization/round_button.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';
import 'package:sociops/screen/home_screen.dart';
import 'package:sociops/screen/fitur_organization/volunteer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 16),
              child: Row(
                children: [
                  RoundButton(
                    buttonColor: AppColors.primaryColor,
                    iconColor: AppColors.arrowColor,
                    icon: Icons.arrow_back,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Hyundai',
                    style: Styles.organizerTextStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomFollowButton(),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GalangDana()),
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.Kotak),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('give-love.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  const Text(
                                    'Galang Dana',
                                    style: Styles.Result2,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.navigate_next,
                                    color: AppColors.arrowColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Volunteer()), // Navigasi ke VolunteerPage
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.Kotak),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('community.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  const Text(
                                    'Volunteer',
                                    style: Styles.Result2,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.navigate_next,
                                    color: AppColors.arrowColor,
                                  ),
                                ],
                              ),
                            ),
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
    );
  }
}

class CustomFollowButton extends StatefulWidget {
  const CustomFollowButton({super.key});

  @override
  _CustomFollowButtonState createState() => _CustomFollowButtonState();
}

class _CustomFollowButtonState extends State<CustomFollowButton> {
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
          Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/hyundai.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hyundai',
                        style: Styles.result3,
                      ),
                      SizedBox(width: 8),
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Icon(
                          Icons.verified,
                          color: AppColors.arrowColor,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            '12',
                            style: Styles.resultTextStyle,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Campaign',
                            style: Styles.resultTextStyle,
                          ),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          Text(
                            '32',
                            style: Styles.resultTextStyle,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Diikuti',
                            style: Styles.resultTextStyle,
                          ),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          Text(
                            '12',
                            style: Styles.resultTextStyle,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Mengikuti',
                            style: Styles.resultTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: toggleFollow,
            child: Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isFollowing ? AppColors.Button : AppColors.arrowColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 8),
                  Text(
                    isFollowing ? 'Mengikuti' : 'Ikuti',
                    style: TextStyle(
                      color: isFollowing ? Colors.blue : AppColors.Button,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'About',
                style: Styles.resultTextStyle,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Proin et euismod diam. Duis fermentum felis nisi, ut lobortis lectus mollis non. Integer pellentesque erat eu diam pharetra auctor id et nulla. Nam sodales arcu nec blandit fringilla. Ut vitae ligula vel lectus ultrices tempus ut id sem. Etiam egestas lacus scelerisque augue congue, sed rutrum sem lobortis. Pellentesque vel enim ante. Quisque hendrerit lobortis neque, ac tempor dui elementum vel. Duis vitae ante imperdiet, lacinia nulla sit amet, hendrerit erat. In ac lectus vulputate, pellentesque est et, interdum augue. Nam in sodales augue, non pellentesque orci. Nullam aliquet ante ut dolor molestie venenatis. Aliquam a erat quis nulla congue porttitor sit amet id nulla. Fusce pretium diam quam, vel consequat nibh feugiat id. Aenean laoreet auctor sollicitudin. Donec at sagittis nulla, sit amet lacinia eros.',
              style: Styles.resultTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
