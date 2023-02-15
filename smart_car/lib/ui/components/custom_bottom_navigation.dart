import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildItem(
              icon: CupertinoIcons.home,
              label: 'Home',
            ),
            _buildItem(
              icon: CupertinoIcons.bolt,
            ),
            _buildItem(
              icon: CupertinoIcons.settings,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem({
    required IconData icon,
    String? label,
  }) {
    return SizedBox(
      width: 70,
      child: GestureDetector(
        onTap: () {},
        child: (label != null)
            ? Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 4),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      label,
                      style: const TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              )
            : Icon(
                icon,
                color: Colors.white,
              ),
      ),
    );
  }
}
