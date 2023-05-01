import 'package:flutter/material.dart';
import 'package:panucci_ristorante/screens/checkout.dart';

import '../screens/home.dart';
import '../themes/app_colors.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        child: ListView(
          children: <Widget>[
            ListTile(
                title: Text(
              "Table 03",
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.drawerFontColor,
                  fontWeight: FontWeight.w500),
            )),
            ListTile(
              textColor: AppColors.drawerFontColor,
              title: const Text(
                "Bill",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            ListTile(
              iconColor: AppColors.drawerIconColor,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Home();
                })));
              },
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Icon(Icons.receipt_long),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Current order",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    )),
                    Text(
                      "100+",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ]),
            ),
            ListTile(
              iconColor: AppColors.drawerIconColor,
              textColor: AppColors.drawerFontColor,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Checkout();
                })));
              },
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Icon(Icons.fact_check_outlined),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "All order",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    )),
                  ]),
            )
          ],
        ));
  }
}
