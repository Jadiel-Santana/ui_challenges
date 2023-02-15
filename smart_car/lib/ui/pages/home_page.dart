import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/components.dart';
import '../theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showHighViewCar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 50, 16, 80),
              child: Column(
                children: [
                  Visibility(
                    visible: !showHighViewCar,
                    replacement: LimitedBox(
                      maxHeight: 250,
                      child: RotatedBox(
                        quarterTurns: 5,
                        child: Image.asset(
                          'lib/ui/assets/high.png',
                        ),
                      ),
                    ),
                    child: LimitedBox(
                      maxHeight: 250,
                      child: Image.asset(
                        'lib/ui/assets/front.png',
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        '20',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundLight,
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 10),
                                  child: Text(
                                    'Not charging',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Icon(
                                CupertinoIcons.battery_25,
                                color: AppColors.pinkDark,
                                size: 28,
                              ),
                            ],
                          ),
                          const Text(
                            '%',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    child: Divider(
                      thickness: 1,
                      height: 1,
                      color: AppColors.white.withOpacity(0.1),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Tesla Model S',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              AppColors.greenDark,
                              AppColors.greenLight,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() => showHighViewCar = !showHighViewCar);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                          ),
                          child: const Text(
                            'Start Charging',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CardExpandedWidget(
                        title: 'Charge now by',
                        primaryLabel: 'Time: 1.5 hrs',
                        secondLabel: 'Energy: 20 kWh',
                      ),
                      Column(
                        children: const [
                          CardWidget(
                            title: 'Remaining Battery\nRange',
                            value: '30',
                            label: 'Miles',
                          ),
                          SizedBox(height: 8),
                          CardWidget(
                            title: 'Remaining Battery\nPercentage',
                            value: '20',
                            label: '%',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavigation(),
            ),
          ),
        ],
      ),
    );
  }
}
