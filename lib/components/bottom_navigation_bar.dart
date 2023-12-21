import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_journal/components/app_images.dart';
import 'package:travel_journal/components/bottom_navigation_item.dart';




enum Menus {
  home,
  weather,
  add,
  map,
  user,
}

class MyBottomNavigationBar extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  MyBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(children: [
                Expanded(
                    child: MyButtonNavigationItem(
                        onPressed: () => onTap(Menus.home),
                        icon: AppImages.ic_home,
                        currentItem: currentIndex,
                        name: Menus.home)),
                Expanded(
                    child: MyButtonNavigationItem(
                        onPressed: () => onTap(Menus.weather),
                        icon: AppImages.ic_weather,
                        currentItem: currentIndex,
                        name: Menus.weather)),
                const Spacer(),
                Expanded(
                    child: MyButtonNavigationItem(
                        onPressed: () => onTap(Menus.map),
                        icon: AppImages.ic_map,
                        currentItem: currentIndex,
                        name: Menus.map)),
                Expanded(
                    child: MyButtonNavigationItem(
                        onPressed: () => onTap(Menus.user),
                        icon: AppImages.ic_user,
                        currentItem: currentIndex,
                        name: Menus.user)),
              ]),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                padding: const EdgeInsets.all(16),
                width: 64,
                height: 64,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  AppImages.ic_add,
                  colorFilter: ColorFilter.mode(
                      currentIndex == Menus.add ? Colors.blue : Colors.black,
                      BlendMode.srcIn),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
