import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CardExpandedWidget extends StatelessWidget {
  final String title;
  final String primaryLabel;
  final String secondLabel;

  const CardExpandedWidget({
    Key? key,
    required this.title,
    required this.primaryLabel,
    required this.secondLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: 165,
      child: Card(
        color: AppColors.backgroundLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w200
                ),
              ),
              const SizedBox(height: 8),
              const Icon(
                Icons.alarm,
                color: AppColors.gold,
                size: 34,
              ),
              const SizedBox(height: 8),
              Text(
                primaryLabel,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
                child: Divider(
                  color: AppColors.white,
                  height: 3,
                ),
              ),
              const Icon(
                CupertinoIcons.bolt,
                color: AppColors.blue,
                size: 34,
              ),
              const SizedBox(height: 8),
              Text(
                secondLabel,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
