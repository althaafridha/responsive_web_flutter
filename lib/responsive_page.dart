import 'package:flutter/material.dart';
import 'package:responsive_web/features/pages/desktop_page_view.dart';
import 'package:responsive_web/features/pages/mobile_page_view.dart';
import 'package:responsive_web/features/pages/tablet_page_view.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, boxContrains) {
        if (boxContrains.maxWidth < 500) {
          return const MobilePageView();
        } else if (boxContrains.maxWidth < 1100) {
          return const TabletPageView();
        } else {
          return const DesktopPageView();
        }
      },
    );
  }
}