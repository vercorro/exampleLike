import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/single_view/bloc_full_screen/full_screen_bloc.dart';
import 'package:flutter_app/single_view/bloc_full_screen/full_screen_event.dart';
import 'package:flutter_app/single_view/bloc_full_screen/full_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:like_button/like_button.dart';

import '../../post.dart';

class FullScreen extends StatelessWidget {

  FullScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<FullScreenBloc>(
        create: (context) => FullScreenBloc(),
        child: FullScreenView(
        ),
      ),
    );
  }
}

class FullScreenView extends StatefulWidget {

  FullScreenView();

  @override
  _FullScreenViewState createState() =>
      _FullScreenViewState();
}

class _FullScreenViewState extends State<FullScreenView> {
  FullScreenBloc fullScreenBloc;



  _FullScreenViewState();

  @override
  void initState() {

    fullScreenBloc = BlocProvider.of<FullScreenBloc>(context);

    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<FullScreenBloc, FullScreenState>(
        builder: (context, state) {

        return buildAll(context,state);

    });
  }

  WillPopScope buildAll(BuildContext context,FullScreenState state
      /*,int currentIndex, List<Post> posts*/) {
    print("state is rebuilding "+state.toString());
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(left: 20),
                      child: LikeButton(
                        onTap: onLikeButtonTapped,
                        size: 20,
                        circleColor: CircleColor(
                            start: Color(0xff00ddff), end: Color(0xff0099cc)),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Color(0xff33b5e5),
                          dotSecondaryColor: Color(0xff0099cc),
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            color: isLiked ? Colors.red : Colors.red,
                            size: 20,
                          );
                        },
                        likeCount: 55,
                        countBuilder: (int count, bool isLiked, String text) {
                          var color =
                              isLiked ? Colors.deepPurpleAccent : Colors.grey;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(left: 20),
                      /** Its actually the dislike btn**/
                      child: LikeButton(
                        onTap: onDislikeButtonTapped,

                        size: 20,
                        circleColor: CircleColor(
                            start: Color(0xff00ddff), end: Color(0xff0099cc)),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Color(0xff33b5e5),
                          dotSecondaryColor: Color(0xff0099cc),
                        ),
                        likeBuilder: (bool isLiked) {


                          return Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            color: isLiked ? Colors.black : Colors.black,
                            size: 20,
                          );
                        },
                        likeCount: 54 ,
                        countBuilder: (int count, bool isLiked, String text) {
                          var color =
                              isLiked ? Colors.deepPurpleAccent : Colors.grey;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {

      fullScreenBloc.add(Like());


      return true;

  }

  Future<bool> onDislikeButtonTapped(bool isLiked) async {
      fullScreenBloc.add(Dislike());

      return true;
  }




}
