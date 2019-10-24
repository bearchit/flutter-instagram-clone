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
    return DefaultTabController(
      length: 2,
      child: Row(
        children: <Widget>[
          TabBar(
            tabs: <Widget>[
              Icon(Icons.grid_on),
              Icon(Icons.account_box),
            ],
          ),
          TabBarView(
            children: <Widget>[
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                    50,
                    (index) => Padding(
                      padding: const EdgeInsets.all(0.5),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://picsum.photos/200?random&t=$index"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                    50,
                    (index) => Padding(
                      padding: const EdgeInsets.all(0.5),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://picsum.photos/200?random&t=$index"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
