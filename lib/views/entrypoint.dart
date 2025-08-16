import 'package:delivery/constants/constants.dart';
import 'package:delivery/controllers/tab_index_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            Container(height: height, width: width, color: kOffWhite),
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedIconTheme: const IconThemeData(
                    color: Colors.black38,
                  ),
                  selectedIconTheme: const IconThemeData(color: kSecondary),
                  onTap: (value) => {controller.setTabIndex = value},
                  currentIndex: controller.getTabIndex(),
                  items: [
                    BottomNavigationBarItem(
                      icon: controller.getTabIndex() == 0
                          ? Icon(AntDesign.appstore1)
                          : Icon(AntDesign.appstore_o),
                      label: "Home",
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: "Search",
                    ),
                    BottomNavigationBarItem(
                      icon: Badge(
                        label: Text('1'),
                        child: Icon(FontAwesome.shopping_cart),
                      ),
                      label: "Cart",
                    ),
                    BottomNavigationBarItem(
                      icon: controller.getTabIndex == 3
                          ? Icon(FontAwesome.user_circle)
                          : Icon(FontAwesome.user_circle_o),
                      label: "Profile",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
