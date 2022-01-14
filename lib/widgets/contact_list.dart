import 'package:facebook_responsive_layout/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key key, @required this.users}) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: users.length,
                itemBuilder: (_, index) {
                  final user = users[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: UserCard(user: user),
                  );
                }),
          )
        ],
      ),
    );
  }
}
