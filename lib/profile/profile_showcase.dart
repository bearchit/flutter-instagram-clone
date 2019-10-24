import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileShowcase extends StatefulWidget {
  @override
  _ProfileShowcaseState createState() => _ProfileShowcaseState();
}

class _ProfileShowcaseState extends State<ProfileShowcase>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: buildPosts(context),
    );
  }

  Widget buildPosts(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        50,
        (index) => Padding(
          padding: const EdgeInsets.all(0.5),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                    "https://picsum.photos/200?random&t=$index"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
