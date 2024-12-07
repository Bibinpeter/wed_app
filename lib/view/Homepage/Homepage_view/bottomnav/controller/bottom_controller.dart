import 'package:get/get.dart';

enum SelectedTab { home, category,plus, shortlist,profile }

class BottomNavController extends GetxController {
  var selectedTab = SelectedTab.home.obs;

  void updateTab(int index) {
    selectedTab.value = SelectedTab.values[index];
  }
}
