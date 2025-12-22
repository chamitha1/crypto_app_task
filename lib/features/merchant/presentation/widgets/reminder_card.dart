import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReminderCard extends StatelessWidget {
  const ReminderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFBF6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFFFAD4F),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: SvgPicture.asset(
              'assets/icons/merchant_details/info_circle.svg',
              width: 24,
              height: 24,
               colorFilter: const ColorFilter.mode(
                 Color(0xFFFF9B29),
                 BlendMode.srcIn,
               ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Important",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFFFF9B29),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "KYC verification typically takes 1-24 hours. You'll be notified when approved.",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF532D00),
                    height: 1.5,
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
