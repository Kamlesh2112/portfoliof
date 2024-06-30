import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';

class EventChildMobile extends StatelessWidget {
  final String role;
  final String date;
  final String companyName;
  final String description;

  const EventChildMobile(
      {super.key,
      required this.role,
      required this.date,
      required this.companyName,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20, left: 20),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            role,
            style: const TextStyle(color: AppColors.accentColor, fontSize: 20),
          ),
          Text(
            date,
            style: const TextStyle(color: AppColors.textColor, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            companyName,
            style: const TextStyle(color: AppColors.accentColor, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
