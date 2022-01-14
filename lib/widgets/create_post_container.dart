import 'package:flutter/material.dart';

import '../models/models.dart';
import 'widgets.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?'),
                ),
              )
            ],
          ),
          const Divider(height: 10, thickness: 0.5),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  onPressed: () => print('Live'),
                  label: Text('Live'),
                ),
                const VerticalDivider(width: 8),
                TextButton.icon(
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  onPressed: () => print('Photo'),
                  label: Text('Photo'),
                ),
                const VerticalDivider(width: 8),
                TextButton.icon(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                  onPressed: () => print('Room'),
                  label: Text('Room'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
