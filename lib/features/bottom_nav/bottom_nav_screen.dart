import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/app/router/app_routes.dart';
import 'package:rick_and_morty_app/core/io_ui.dart';
import 'package:rick_and_morty_app/core/shared/app_spacing.dart';

@RoutePage()
class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List<PageRouteInfo> _buildRoutes = [
    CharactersRoute(),
    const FavoritesRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _buildRoutes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: AppColors.greyUsual,
              ),
            ),
            color: AppColors.backgroundColor,
          ),
          child: SizedBox(
            height: 84,
            child: Row(
              children: _navBarsItems(
                activeIndex: tabsRouter.activeIndex,
                onSelectedItem: tabsRouter.setActiveIndex,
              ).map((e) => Expanded(child: e)).toList(),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _navBarsItems({
    required int activeIndex,
    required Function(int index) onSelectedItem,
  }) {
    return [
      _buildNavItem(
        item: BottomMenuItem(
          index: 0,
          iconData: Icons.person_2,
          title: 'Персонажи',
        ),
        isActive: activeIndex == 0,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
        item: BottomMenuItem(
          index: 1,
          iconData: Icons.star,
          title: 'Избранные',
        ),
        isActive: activeIndex == 1,
        onSelectedItem: onSelectedItem,
      ),
    ];
  }
}

Widget _buildNavItem({
  required BottomMenuItem item,
  required Function(int index) onSelectedItem,
  bool isActive = true,
}) {
  const selectedColor = AppColors.greenText;
  const unselectedColor = AppColors.greyStatus;
  return GestureDetector(
    onTap: () {
      onSelectedItem(item.index);
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: AppProps.kBigMargin,
          height: AppProps.kBigMargin,
          child: Icon(
            item.iconData,
            color: isActive ? selectedColor : unselectedColor,
          ),
        ),
        Gap.xxsmall(),
        Text(
          textAlign: TextAlign.center,
          item.title,
          style: TextStyle(
            color: isActive ? selectedColor : unselectedColor,
            fontSize: AppProps.kMediumMargin,
          ),
        ),
      ],
    ),
  );
}

class BottomMenuItem {
  IconData iconData;
  int index;
  String title;

  BottomMenuItem({
    required this.iconData,
    required this.index,
    required this.title,
  });
}
