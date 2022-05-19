import 'package:flutter/material.dart';
import 'package:my_web/helpers/responsiveness.dart';
import 'package:my_web/widgets/large_screen.dart';
import 'package:my_web/widgets/small_screen.dart';
import 'package:my_web/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topNavBar(context, scaffoldKey),
        drawer: Drawer(),
        body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
