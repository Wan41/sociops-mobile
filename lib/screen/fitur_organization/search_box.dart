import 'package:flutter/material.dart';
import 'package:sociops/style/font_style.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      width: 396,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.search,
              color: Styles.iconColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32), // Sesuaikan jarak ikon dan teks
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari',
                hintStyle: Styles.searchTextStyle,
                border: InputBorder.none,
              ),
              style: Styles.searchTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}