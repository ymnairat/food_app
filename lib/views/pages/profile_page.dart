import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.primary, AppColors.orangeShade],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: const [0.5, 0.9],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: AppColors.orangeShade,
                    minRadius: 35.0,
                    child: const Icon(
                      Icons.call,
                      size: 30.0,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: AppColors.white,
                    minRadius: 60.0,
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          'https://tse3.mm.bing.net/th?id=OIP.SvbOVBanK7vDreTcCCuHUwHaHa&pid=Api&P=0&h=220'),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.orangeShade,
                    minRadius: 35.0,
                    child: const Icon(
                      Icons.email,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Mahmoud Nairat',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        const Column(
          children: <Widget>[
            Divider(),
            ListTile(
              title: Text(
                'Address',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Palestine - Jenin',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Birth Date',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '17/07/1991',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Gender',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Male',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}