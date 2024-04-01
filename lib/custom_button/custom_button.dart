import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  const custom_button({
    Key? key,
    required this.text,
    // required this.onTap,
  }) : super(key: key);

  final String text;
  // cosnt VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("tapped on container");
      },
      child: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),
    );
  }
}
