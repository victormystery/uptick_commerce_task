import 'package:commerce_uptick_task/Presentation/pages/cart_view.dart';
import 'package:commerce_uptick_task/Presentation/pages/home_page_view.dart';
import 'package:commerce_uptick_task/Presentation/pages/wishlist_view.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constant/app_string.dart';
import '../home/bloc/home_page_bloc.dart';

List<BottomNavigationBarItem> bottomNavBarItems = <BottomNavigationBarItem>[
  const BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(CommunityMaterialIcons.heart_outline),
    label: 'Wishlist',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart_outlined),
    label: 'Cart',
  ),
];

List<Widget> screens = <Widget>[
  HomePage(),
  WishListPage(),
  CartPage(),
];

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageBloc, HomePageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(appName),
            centerTitle: true,
          ),
          body: screens.elementAt(state.tabIndex),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.tabIndex,
            onTap: (index) {
              context.read<HomePageBloc>().add(NavBar(tabIndex: index));
            },
            items: bottomNavBarItems,
          ),
        );
      },
    );
  }
}
