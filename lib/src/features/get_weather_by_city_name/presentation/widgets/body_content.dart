import 'package:flutter/material.dart';
import 'package:weather_app_1810/src/core/utils/app_colors.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          child: Column(
            children: [
              Text(
                'Measuring programming progress by lines of code is like measuringaircraft building progress by weight',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Bill Gates',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        InkWell(
          onTap: () {
            // print('Hi');
          },
          child: Container(
            padding: const EdgeInsets.all(15.0),
            // margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
