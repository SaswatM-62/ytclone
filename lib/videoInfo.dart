import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VideoFeed extends StatefulWidget {
  VideoFeed({Key key}) : super(key: key);

  _VideoFeedState createState() => _VideoFeedState();
}

class _VideoFeedState extends State<VideoFeed> {
  List<Map> data = [
    {
      'url': 'https://www.youtube.com/watch?v=JnEH9tYLxLk',
      'thumbnail': "https://i.ytimg.com/an_webp/JnEH9tYLxLk/mqdefault_6s_480x270.webp?du=3000&sqp=CLnZtPwF&rs=AOn4CLB8MZ1WJQZnODhQTAP0KBNINwwWqg",
      'title': 'Build a Full Stack Twitter Clone with Coding Garden',
      'date': 'Sep 11, 2018',
      'creator': 'The Coding Train',
      'profile_url':
          'https://yt3.ggpht.com/a-/AOh14Gih2Vu5HRQ4nGHc2PcgfVNHxdRFps49op3lTQ=s68-c-k-c0x00ffffff-no-rj-mo',
    },
    {
      'url': 'https://www.youtube.com/watch?v=0-S5a0eXPoc',
      'thumbnail': 'https://i.ytimg.com/an_webp/0-S5a0eXPoc/mqdefault_6s.webp?du=3000&sqp=CPfZtPwF&rs=AOn4CLB8kSWuDY6P3WBT9-oV0Okd9ZWEeQ',
      'title': 'React Native Tutorial for Beginners - Build a React Native App [2020]',
      'date': 'May 11, 2020',
      'creator': 'Programming With Mosh',
      'profile_url':
          'https://yt3.ggpht.com/a/AATXAJymy6xr9_W7GTkPW1ov2OyxzvNCOE-ff1d7VK36Cg=s88-c-k-c0xffffffff-no-rj-mo',
    },
    {
      'url': 'https://www.youtube.com/watch?v=1gDhl4leEzA',
      'thumbnail': 'https://i.ytimg.com/an_webp/1gDhl4leEzA/mqdefault_6s.webp?du=3000&sqp=CID0tPwF&rs=AOn4CLDXyHrZNUMcK7-HHB4fpI4z4sFVFw',
      'title': 'Flutter Crash Course',
      'date': 'Dec 11, 2019',
      'creator': 'Traversy Media',
      'profile_url':
          'https://yt3.ggpht.com/a/AATXAJw6qBlNzbAweKz7UlC44hYLoEtdoXGmzN8IJno3mg=s88-c-k-c0xffffffff-no-rj-mo',
    },
    {
      'url': 'https://www.youtube.com/watch?v=DLX62G4lc44',
      'thumbnail': 'https://i.ytimg.com/vi/DLX62G4lc44/hq720.jpg?sqp=-oaymwEZCNAFEJQDSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLAOendeRiXEh_Bny5au2gzBcr2r_A',
      'title': 'Learn React JS - Full Course for Beginners - Tutorial 2019',
      'date': 'Dec 18, 2018',
      'creator': 'freeCodeCamp.org',
      'profile_url':
          'https://yt3.ggpht.com/a/AATXAJwFt03RAznOsPwlfo5c1kW1rp-1o3Xgpw9MNreQMQ=s88-c-k-c0xffffffff-no-rj-mo',
    },
    {
      'url': 'https://www.youtube.com/watch?v=bwItFdPt-6M',
      'thumbnail': 'https://i.ytimg.com/an_webp/bwItFdPt-6M/mqdefault_6s.webp?du=3000&sqp=CKD_tPwF&rs=AOn4CLD_fWR9_x62LxOG642_9vCr1kEpSA',
      'title': 'Vue 3 Composition API Introduction [FULL TUTORIAL]',
      'date': 'Sep 21, 2020',
      'creator': 'Academind',
      'profile_url':
          'https://yt3.ggpht.com/a/AATXAJxb_vf1eP6r278YghZIE53tMLh13RCKU6ZSuoTt6w=s88-c-k-c0xffffffff-no-rj-mo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Column(
            children: <Widget>[
              AspectRatio(
                child: Image(
                  image: NetworkImage(data[index]['thumbnail']),
                  centerSlice: Rect.largest,
                ),
                aspectRatio: 16 / 9,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index]['profile_url']),
                ),
                title: Text(
                  data[index]['title'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(data[index]['creator']+" . "+data[index]['date'],
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        );
      },
    );
  }
}
