import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});
  static const String routeName = "/user-info";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                      'https://png.pngitem.com/pimgs/s/649-6490124_katie-notopoulos-katienotopoulos-i-write-about-tech-round.png',
                    ),
                  ),
                  // Positioned(
                  //   child: IconButton(
                  //     onPressed: selectImage,
                  //     icon: Icon(
                  //       Icons.add_a_photo,
                  //     ),
                  //    ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
