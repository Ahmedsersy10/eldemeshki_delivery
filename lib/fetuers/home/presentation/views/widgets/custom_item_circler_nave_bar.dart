import 'package:flutter/material.dart';

class CustomItemCirclerNaveBar extends StatelessWidget {
  const CustomItemCirclerNaveBar({super.key, this.title = '', required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey),
        Text(title, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
