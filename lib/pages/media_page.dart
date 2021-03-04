import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../app_color.dart';

class MediaPage extends StatefulWidget {
  @override
  _MediaPageState createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  YoutubePlayerController _playerController = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=TLIMAdx2gcs"),
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "Latest",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: NetworkImage(
                      "https://in.bmscdn.com/nmcms/events/banner/desktop/media-desktop-mkj-gamings-pubg-tournament-2020-1-13-t-16-55-2.jpg"),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Videos",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: width/2.62,
                      width: width/2.62,
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                height: width/2.62,
                                width: width/2.62,
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://in.bmscdn.com/nmcms/events/banner/desktop/media-desktop-mkj-gamings-pubg-tournament-2020-1-13-t-16-55-2.jpg"),
                              )),
                          Align(
                              alignment: Alignment.center,
                              child: FaIcon(
                                FontAwesomeIcons.youtube,
                                color: Colors.white54,
                                size: 60,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Competition results",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          height: width/2.62,
                          width: width/2.62,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://esportsobserver.com/wp-content/uploads/2019/01/PUBG-Twitch.png"),
                        ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Article",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          height: width/2.62,
                          width: width/2.62,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://assets.mspimages.in/wp-content/uploads/2020/11/PUBG-Mobile-Global-Championship-2020.jpg"),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "News",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          height: width/2.62,
                          width: width/2.62,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.xda-developers.com/files/2019/01/pubg-mobile.png"),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
