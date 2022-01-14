import 'package:facebook_responsive_layout/data/data.dart';
import 'package:facebook_responsive_layout/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../config/pallet.dart';
import '../models/models.dart';

class MoreOptionsList extends StatelessWidget {
  const MoreOptionsList({Key key, @required this.currentUser})
      : super(key: key);

  final User currentUser;

  final List<List> _moreOptionsList = const [
    [MdiIcons.shieldAccount, Colors.deepPurple, 'COVID-19'],
    [MdiIcons.accountMultiple, Colors.cyan, 'Friends'],
    [MdiIcons.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [MdiIcons.flag, Colors.orange, 'Pages'],
    [MdiIcons.storefront, Palette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [MdiIcons.calendarStar, Colors.red, 'Events'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: ListView.builder(
          itemCount: 1 + _moreOptionsList.length,
          itemBuilder: (_, index) {
            if (index == 0)
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: UserCard(user: currentUser),
              );

            final List option = _moreOptionsList[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child:
                  _Option(icon: option[0], color: option[1], label: option[2]),
            );
          }),
    );
  }
}

class _Option extends StatelessWidget {
  const _Option({
    Key key,
    @required this.icon,
    @required this.color,
    @required this.label,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String label;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(label),
      child: Row(
        children: [
          Icon(icon, size: 38, color: color),
          const SizedBox(
            width: 6,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
