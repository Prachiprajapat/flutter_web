import 'package:flutter/material.dart';
import 'package:flutter_web/provider/app_provider.dart';
import 'package:flutter_web/rounting/route_names.dart';
import 'package:flutter_web/services/navigation_service.dart';
import 'package:flutter_web/widgets/navbar/navbar_logo.dart';
import 'package:flutter_web/widgets/side_menu/side_menu_item.dart';
import 'package:provider/provider.dart';

import '../../locator.dart';

class SideMenuTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo,
          gradient: LinearGradient(
            colors: [
              Colors.indigo,
              Colors.indigo.shade600
            ],
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200], offset: Offset(3, 5), blurRadius: 17)
          ]),
      width: 250,
      child: Container(
        child: Column(
          children: [
            NavBarLogo(),

            SideMenuItemDesktop(
              icon: Icons.dashboard,
              text: 'Dashboard',
              active: appProvider.currentPage == DisplayedPage.HOME,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.HOME);
                locator<NavigationService>().navigateTo(HomeRoute);
              },
            ),

            SideMenuItemDesktop(
              icon: Icons.people,
              text: 'Users',
              active: appProvider.currentPage == DisplayedPage.USERS,

              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.USERS);

                locator<NavigationService>().navigateTo(UsersRoute);
              },
            ),

            SideMenuItemDesktop(
              icon: Icons.shopping_cart,
              text: 'Orders',
              active: appProvider.currentPage == DisplayedPage.ORDERS,

              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.ORDERS);
                locator<NavigationService>().navigateTo(OrdersRoute);
              },
            ),

            SideMenuItemDesktop(
              icon: Icons.category,
              text: 'Products',
              active: appProvider.currentPage == DisplayedPage.PRODUCTS,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.PRODUCTS);
                locator<NavigationService>().navigateTo(ProductsRoute);
              },
            ),

          ],
        ),
      ),
    );
  }
}
