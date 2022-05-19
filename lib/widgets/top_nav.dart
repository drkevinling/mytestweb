import 'package:flutter/material.dart';
import 'package:my_web/helpers/responsiveness.dart';

AppBar topNavBar(
        BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: (() {
                key.currentState!.openDrawer();
              }),
              icon: const Icon(
                Icons.menu,
                color: Colors.blue,
              ),
            ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
