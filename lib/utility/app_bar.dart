import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppBar {
  static AppBar myApp(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            iconSize: 40,
            icon: const Icon(
              Icons.menu,
              color: Colors.white, // Change Custom Drawer Icon Color
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      // leading: const Icon(
      //   Icons.menu,
      //   size: 40,
      // ),
      title: Image.asset(
        "assets/interflora-logo-desktop.png",
        width: 70,
        height: 40,
        fit: BoxFit.fill,
      ),
      actions: [
        IconButton(
          icon: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: const CircleAvatar(
                radius: 12,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.currency_rupee_sharp,
                  color: Colors.white,
                  size: 20,
                )),
          ),
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            context.push(context.namedLocation("add-to-cart"));
          },
          icon: const Icon(
            Icons.shopping_cart_checkout_outlined,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
