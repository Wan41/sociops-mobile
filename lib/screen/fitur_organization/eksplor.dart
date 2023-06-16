import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_organization/round_button.dart';
import 'package:sociops/screen/fitur_organization/search_box.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class Eksplor extends StatefulWidget {
  const Eksplor();

  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Eksplor> {
  String _selectedFilter = 'Day';
  bool _isSelectedTransfer = false;

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
                  Text(
                    'Eksplor',
                    style: Styles.organizerTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: SearchBox(),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelectedTransfer = !_isSelectedTransfer;
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: _isSelectedTransfer
                            ? AppColors.arrowColor
                            : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.transfer_within_a_station,
                        color: _isSelectedTransfer
                            ? AppColors.primaryColor
                            : AppColors.arrowColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      // Logic for sort button
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Choose Filter',
                                    style: Styles.resultTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Date',
                                  style: Styles.resultTextStyle,
                                  textAlign: TextAlign.start,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedFilter = 'Day';
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 20, // Mengatur tinggi kotak
                                          child: CategoryBox(
                                            text: 'Day',
                                            color: _selectedFilter == 'Day'
                                                ? AppColors.arrowColor
                                                : Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedFilter = 'Day';
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 20, // Mengatur tinggi kotak
                                          child: CategoryBox(
                                            text: 'Week',
                                            color: _selectedFilter == 'Day'
                                                ? AppColors.arrowColor
                                                : Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedFilter = 'Day';
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 20, // Mengatur tinggi kotak
                                          child: CategoryBox(
                                            text: 'Month',
                                            color: _selectedFilter == 'Day'
                                                ? AppColors.arrowColor
                                                : Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedFilter = 'Day';
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 20, // Mengatur tinggi kotak
                                          child: CategoryBox(
                                            text: 'Year',
                                            color: _selectedFilter == 'Day'
                                                ? AppColors.arrowColor
                                                : Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'Category',
                                  style: Styles.resultTextStyle,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedFilter = 'Day';
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 20, // Mengatur tinggi kotak
                                          child: CategoryBox(
                                            text: 'General',
                                            color: _selectedFilter == 'Day'
                                                ? AppColors.arrowColor
                                                : Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedFilter = 'Day';
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 20, // Mengatur tinggi kotak
                                          child: CategoryBox(
                                            text: 'Education',
                                            color: _selectedFilter == 'Day'
                                                ? AppColors.arrowColor
                                                : Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedFilter = 'Day';
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 20, // Mengatur tinggi kotak
                                          child: CategoryBox(
                                            text: 'Disaster',
                                            color: _selectedFilter == 'Day'
                                                ? AppColors.arrowColor
                                                : Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedFilter = 'Day';
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 20, // Mengatur tinggi kotak
                                          child: CategoryBox(
                                            text: 'Year',
                                            color: _selectedFilter == 'Day'
                                                ? AppColors.arrowColor
                                                : Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                GestureDetector(
                                  onTap: () {
                                    // Logic for apply button
                                    Navigator.pop(
                                        context); // Kembali ke halaman sebelumnya
                                  },
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: AppColors.Button,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Apply',
                                        style: Styles.Result2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.sort,
                        color: AppColors.arrowColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryBox(
                      text: 'All',
                      color: AppColors.arrowColor,
                      width: 105,
                    ),
                    SizedBox(width: 8),
                    CategoryBox(
                      text: 'Galang Dana',
                      color: AppColors.arrowColor,
                      width: 105, // Adjust the width value to make it wider
                    ),
                    SizedBox(width: 8),
                    CategoryBox(
                      text: 'Volunteer',
                      color: AppColors.arrowColor,
                      width: 105,
                    ),
                  ],
                ),
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

class CategoryBox extends StatefulWidget {
  final String text;
  final Color color;
  final double width;

  const CategoryBox({
    required this.text,
    required this.color,
    this.width = 80,
  });

  @override
  _CategoryBoxState createState() => _CategoryBoxState();
}

class _CategoryBoxState extends State<CategoryBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        width: widget.width,
        decoration: BoxDecoration(
          color: _isSelected ? widget.color : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.arrowColor,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: _isSelected ? Colors.white : AppColors.arrowColor,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFollowButton extends StatefulWidget {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0XFFFEE4E2),
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: 400,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "assets/hyundai.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    right: 8,
                    bottom: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  'CLOSED SOON',
                                  textAlign: TextAlign.center,
                                  style: Styles.closed,
                                ),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFEEF4FF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: const Icon(
                                Icons.bookmark_border,
                                color: Color(0xFF444CE7),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 130),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 54,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: AppColors.backgroundColor,
                              ),
                              child: const Center(
                                child: Text(
                                  'Umum',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.arrowColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              width: 54,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: AppColors.backgroundColor,
                              ),
                              child: const Center(
                                child: Text(
                                  'Online',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.arrowColor),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              width: 70,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: AppColors.backgroundColor,
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                    size: 12,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'Hyundai',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.arrowColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 12),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Center(
                      child: Container(
                        width: 250,
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.0),
                          color: Color.fromARGB(255, 212, 245, 212),
                        ),
                        child: const Center(
                          child: Text(
                            '1 Aksi = Rp10.000',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 19, 245, 49),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                  'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
                  style: Styles.resultTextStyle),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rp233.461.250', style: Styles.resultTextStyle),
                  Text('72%', style: Styles.resultTextStyle),
                ],
              ),
              const SizedBox(height: 8),
              const LinearProgressIndicator(
                backgroundColor: Color(0XFFFEF3F2),
                color: Color(0XFFD92D20),
                value: 72 / 100,
                minHeight: 12,
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: toggleFollow,
                child: Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 32, 32),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Text(
                        'Donasi Sekarang',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
