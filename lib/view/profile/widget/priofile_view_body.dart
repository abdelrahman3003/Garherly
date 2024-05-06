import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue, // Background color of the circle
      child: Icon(
        Icons.person, // Replace with the desired icon
        size: 60,
        color: Colors.white, // Color of the icon
      ),
    );
  }
}
