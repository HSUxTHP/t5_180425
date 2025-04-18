import 'package:flutter/material.dart';
import 'tablet_layout.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return const MobileLayout();
        } else if (constraints.maxWidth < 1100) {
          return const TabletLayout();
        } else {
          return const DesktopLayout();
        }
      },
    );
  }
}