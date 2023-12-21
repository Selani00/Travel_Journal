import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travel_journal/components/app_colors.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  int? colorId =
      int.tryParse(doc['color_id'].toString() ?? ''); // Convert string to int

  Color selectedColor =
      colorId != null && colorId >= 0 && colorId < AppColors.cardsColors.length
          ? AppColors.cardsColors[colorId]
          : Colors.grey; // Default color if index is invalid

  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: selectedColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["note_title"],
            style: AppColors.mainTitle,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            doc["creation_data"],
            style: AppColors.dateTitle,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            doc["note_content"],
            style: AppColors.mainContent,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
