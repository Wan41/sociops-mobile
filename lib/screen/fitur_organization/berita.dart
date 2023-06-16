import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_organization/round_button.dart';
import 'package:sociops/screen/fitur_organization/search_box.dart';
import 'package:sociops/screen/fitur_organization/baca.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class Berita extends StatefulWidget {
  const Berita();

  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
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
                    'Berita terbaru',
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
                      text: 'Semua',
                      color: AppColors.arrowColor,
                    ),
                    SizedBox(width: 8),
                    CategoryBox(
                      text: 'Umum',
                      color: AppColors.arrowColor,
                    ),
                    SizedBox(width: 8),
                    CategoryBox(
                      text: 'Bencana',
                      color: AppColors.arrowColor,
                    ),
                    SizedBox(width: 8),
                    CategoryBox(
                      text: 'Pendidikan',
                      color: AppColors.arrowColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hasil Pencarian',
                    style: Styles.resultTextStyle,
                  ),
                  Text(
                    '39 ditemukan',
                    style: Styles.Result2,
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

class CategoryBox extends StatefulWidget {
  final String text;
  final Color color;

  const CategoryBox({
    required this.text,
    required this.color,
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
        width: 80,
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

class CustomFollowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.Kotak,
          width: 1.0,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage('assets/hyundai.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '3 Hari yang lalu',
                  style: Styles.result8,
                ),
                SizedBox(height: 8),
                Text(
                  'PT Hyundai adalah anak perusahaan penjualan dan distributor resmi Hyundai Motor Company yang merupakan produsen otomotif di Indonesia.',
                  style: Styles.result9,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 8),
                Text(
                  'Pada hari Jumat tanggal 5 Mei 2023, komunitas Desa Wagiri membagikan alat kesenian',
                  style: Styles.result10,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.only(bottom: 8), // Add padding here
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Baca()),
                      );
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.Button,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 8),
                          Text(
                            'Baca Selengkapnya',
                            style: TextStyle(
                              color: AppColors.arrowColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
