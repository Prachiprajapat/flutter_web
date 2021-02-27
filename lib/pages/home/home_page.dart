import 'package:flutter/material.dart';
import 'package:flutter_web/pages/home/tablet.dart';
import 'package:flutter_web/widgets/size_constraint.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop.dart';
import 'mobile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ScreenTypeLayout(
       breakpoints: ScreenBreakpoints(
    tablet: 600,
    desktop: 1460,
    watch: 300
  ),
      mobile: HomePageMobile(),
      tablet: HomePageTablet(),
      desktop: SizeConstraintWidget(child: HomePageDesktop()),
    );
  }
}
