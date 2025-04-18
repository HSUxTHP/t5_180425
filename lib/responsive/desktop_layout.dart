import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desktop Layout'),
      ),
      body: Center(
        child: Text(
          'Desktop Layout',
          style: TextStyle(
            fontSize: 24,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
