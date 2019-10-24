import 'package:flutter/material.dart';

class ProfileMenu {
  static final items = [
    {"icon": Icons.settings, "title": "설정"},
    {"icon": Icons.history, "title": "보관"},
    {"icon": Icons.av_timer, "title": "내 활동"},
    {"icon": Icons.assignment_ind, "title": "네임 태그"},
    {"icon": Icons.bookmark_border, "title": "저장됨"},
    {"icon": Icons.list, "title": "친한 친구"},
    {"icon": Icons.person_outline, "title": "사람 찾아보기"},
    {"icon": Icons.tag_faces, "title": "Facebook 열기"}
  ];

  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      context: context,
      builder: (context) {
        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(items[index]["icon"]),
              title: Text(items[index]["title"]),
              onTap: () {
                debugPrint('${items[index]["title"]} pressed');
              },
            );
          },
        );
      },
    );
  }
}
