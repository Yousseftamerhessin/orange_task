import 'package:final_project/shared_widgets/custom_navigationbar_container.dart';
import 'package:final_project/presentation/browse_screen/browse_screen.dart';
import 'package:final_project/presentation/cart/presentation/cart_screen.dart';
import 'package:final_project/presentation/home/screens/home_screen.dart';
import 'package:final_project/presentation/main_screen/cubit/main_cubit.dart';
import 'package:final_project/presentation/profile/presentation/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';


class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> pages = [
    Center(child: HomeScreen()), 
    Center(child: BrowseScreen()),
    Center(child: Text("Wishlist Page")),
    Center(child: CartScreen()),
    Center(child: ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          final cubit = context.read<MainCubit>();

          final List<BottomBarItem> navBarItems = [
            CustomNavigationbarItem(
              buttonText: "Home",
              buttonIcon: Icons.home_outlined,
              isSelected: cubit.mainIndex == 0, 
            ),
            CustomNavigationbarItem(
              buttonText: "Browse",
              buttonIcon: Icons.search,
              isSelected: cubit.mainIndex == 1,
            ),
            CustomNavigationbarItem(
              buttonText: "Wishlist",
              buttonIcon: Icons.favorite_border_outlined,
              isSelected: cubit.mainIndex == 2,
            ),
            CustomNavigationbarItem(
              buttonText: "Cart",
              buttonIcon: Icons.badge,
              isSelected: cubit.mainIndex == 3,
            ),
            CustomNavigationbarItem(
              buttonText: "Profile",
              buttonIcon: Icons.person_2_outlined,
              isSelected: cubit.mainIndex == 4,
            ),
          ];

          return Scaffold(
            bottomNavigationBar: StylishBottomBar(
              items: navBarItems,
              currentIndex: cubit.mainIndex,
              option: AnimatedBarOptions(
                iconStyle: IconStyle.animated,
                barAnimation: BarAnimation.fade,
              ),
              onTap: (index) {
                cubit.changeTab(index);
              },
            ),
            body: pages[cubit.mainIndex], 
          );
        },
      ),
    );
  }
}
