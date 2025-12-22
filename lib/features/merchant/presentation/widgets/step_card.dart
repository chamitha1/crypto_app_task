import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StepCard extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;
  final String stepNumber;
  final Color iconBackgroundColor;

  const StepCard({
    super.key,
    required this.title,
    required this.description,
    required this.iconPath,
    required this.stepNumber,
    required this.iconBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconBackgroundColor,
              borderRadius: BorderRadius.circular(8), 
            ),
            child: SvgPicture.asset(
              iconPath,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF151E2F),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF454F63),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffECEFF5), 
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFFE1E1EC)), 
            ),
            child: Text(
              stepNumber,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF151E2F),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
