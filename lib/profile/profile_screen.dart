import 'package:flutter/material.dart';
import 'package:instagram_clone/profile/profile_menu.dart';
import 'package:instagram_clone/profile/profile_showcase.dart';
import 'package:instagram_clone/widgets/circular_avater.dart';
import 'package:instagram_clone/widgets/numbered_text.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.timer),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.lock,
              size: 14.0,
            ),
            SizedBox(width: 8.0),
            Text("bearchit")
          ],
        ),
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  ProfileMenu.showBottomSheet(context);
                },
              );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildProfileStat(context),
            ProfileShowcase(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileStat(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                CircularAvatar(
                  NetworkImage(
                    "https://scontent-icn1-1.cdninstagram.com/vp/08206fd8cc81534af5996ae108eaf1d8/5E554F4A/t51.2885-19/11887042_1478995215733921_2100417656_a.jpg?_nc_ht=scontent-icn1-1.cdninstagram.com",
                  ),
                  width: 80.0,
                  height: 80.0,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Mingoo Kim',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            NumberedText(number: 35, text: '게시물'),
            NumberedText(number: 94, text: '팔로워'),
            NumberedText(number: 100, text: '팔로잉'),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: RaisedButton(
            child: Text('프로필 수정'),
            onPressed: () {
              debugPrint('프로필 수정 pressed');
            },
          ),
        ),
      ],
    );
  }
}
