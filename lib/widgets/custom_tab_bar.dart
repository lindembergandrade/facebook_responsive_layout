import 'package:facebook_responsive_layout/config/pallet.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);

  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? Border(
                bottom: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3,
                ),
              )
            : Border(
                top: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3,
                ),
              ),
      ),
      tabs: icons
          .asMap()
          .map(
            (index, e) => MapEntry(
              index,
              Tab(
                  icon: Icon(
                e,
                color: index == selectedIndex
                    ? Palette.facebookBlue
                    : Colors.black45,
                size: 25,
              )),
            ),
          )
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
