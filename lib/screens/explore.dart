import 'package:flutter/material.dart';
import 'package:ytclone/videoInfo.dart';

class Explore extends StatefulWidget {
  Explore({Key key}) : super(key: key);

  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://s.ytimg.com/yts/img/trending/nav_icons/coverMusic_84BG_320x320-vflI7Luak.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://s.ytimg.com/yts/img/trending/nav_icons/coverGaming_84BG_320x320-vflr0EUXA.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://s.ytimg.com/yts/img/trending/nav_icons/coverNews_84BG_320x320-vflYn8aEE.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://s.ytimg.com/yts/img/trending/nav_icons/coverMovies_84BG_320x320-vflVwPGdB.png"),
                ),
              ),
            ],
          ),
          Expanded(child: VideoFeed())
        ],
      ),
    );
  }
}
