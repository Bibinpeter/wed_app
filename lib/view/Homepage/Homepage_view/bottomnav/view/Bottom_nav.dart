import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:wedapp/view/Addventor/addventor_view.dart';
import 'package:wedapp/view/Homepage/Homepage_view/bottomnav/controller/bottom_controller.dart';
import 'package:wedapp/view/Homepage/Homepage_view/home_view.dart';
import 'package:wedapp/view/category/category.dart';
import 'package:wedapp/view/profile/profile.dart';
import 'package:wedapp/view/shortlist/shortlistview.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = Get.put(BottomNavController()); 
    return Scaffold(
      extendBody: true,
      body: Obx(() {
        switch (bottomNavController.selectedTab.value) {
          case SelectedTab.home:
            return const HomeView();
          case SelectedTab.category:
            return const CategoryView();
          case SelectedTab.plus:
            return const AddventorView();
          case SelectedTab.shortlist:
            return const Shortlistview();
          case SelectedTab.profile:
            return const ProfileView();
          default:
            return const Center(child: Text("Unknown Tab"));
        }
      }),
      bottomNavigationBar: Obx(
        () => CrystalNavigationBar(
          currentIndex:SelectedTab.values.indexOf(bottomNavController.selectedTab.value),
          unselectedItemColor: Colors.white70,
          backgroundColor: Colors.black.withOpacity(0.1),
          onTap: bottomNavController.updateTab,
           items: [

            CrystalNavigationBarItem(
              icon: IconlyBold.home,
              unselectedIcon: IconlyLight.home,
              selectedColor: Colors.white,
            ),
          
            CrystalNavigationBarItem(
              icon: IconlyBold.category,
              unselectedIcon: IconlyLight.category,
              selectedColor: Colors.white,
            ),

            CrystalNavigationBarItem(
              icon: IconlyBold.plus,
              unselectedIcon: IconlyLight.plus,
              selectedColor: Colors.red,
            ),

            CrystalNavigationBarItem(
              icon: IconlyBold.tick_square,
              unselectedIcon: IconlyLight.tick_square,
              selectedColor: Colors.white,
            ),

            CrystalNavigationBarItem(
              icon: IconlyBold.profile,
              unselectedIcon: IconlyLight.profile,
              selectedColor: Colors.white,
            ),

          ],
        ),
      ),
    );
  }
}
