import 'package:flutter/material.dart';
import 'package:ui_2/data/colors.dart';

class Contribution extends StatelessWidget {
  final String imageUrl;
  final String date;
  final String input;
  final String type;

  const Contribution({Key key, this.imageUrl, this.date, this.input, this.type})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02),
        height: 280,
        width: MediaQuery.of(context).size.width * 0.55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: type == 'contribution' ? darkBlue : Colors.amber[100]),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        bottom: 200,
                        left: 150,
                        // child: ClipRRect(
                        // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Container(
                          height: 100,
                          width: 100,
                          // color: red,
                          decoration: BoxDecoration(
                              shape: type == 'contribution'
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                              color: type == 'contribution'
                                  ? Colors.blueGrey.withOpacity(0.5)
                                  : Colors.amber[300]
                              // color: darkBlue.withOpacity(0.2)
                              ),
                        )),

                    Positioned(
                        top: 230,
                        right: 180,
                        // child: ClipRRect(
                        // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Container(
                          height: 100,
                          width: 100,
                          // color: red,
                          decoration: BoxDecoration(
                              shape: type == 'contribution'
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                              color: type == 'contribution'
                                  ? Colors.blueGrey.withOpacity(0.5)
                                  : Colors.amber[300]
                              // color: darkBlue.withOpacity(0.2)
                              ),
                        )),
                    // ShaderMask(
                    //   shaderCallback: (rect) {
                    //     return LinearGradient(
                    //       begin: Alignment.topCenter,
                    //       end: Alignment.bottomCenter,
                    //       colors: [Colors.transparent, Colors.black87],
                    //     ).createShader(
                    //         Rect.fromLTRB(0, 0, rect.width, rect.height));
                    //   },
                    //   blendMode: BlendMode.srcATop,
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    //     child: CachedNetworkImage(
                    //       height: 320,
                    //       width: MediaQuery.of(context).size.width * 0.55,
                    //       fit: BoxFit.cover,
                    //       imageUrl: imageUrl,
                    //     ),
                    //   ),
                    // ),

                    Positioned(
                        left: 10.0,
                        top: 20.0,
                        child: type == 'contribution'
                                      ? Icon(Icons.filter_none, color: Colors.white) : Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.euro_symbol,
                          color: Colors.white,
                        ),
                      )),
                    Positioned(
                        left: 10.0,
                        bottom: 100.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '5 Inputs',
                              style: TextStyle(
                                  color: type == 'contribution'
                                      ? Colors.greenAccent
                                      : Colors.amber),
                            ),
                            Text(
                              type == 'contribution'
                                  ? 'Contribution'
                                  : 'Loan & Fixes',
                              style: TextStyle(
                                  color: type == 'contribution'
                                      ? Colors.white
                                      : darkBlue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    Positioned(
                        left: 10.0,
                        bottom: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '12, Jan, 2020',
                              style: TextStyle(
                                  color: type == 'contribution'
                                      ? Colors.grey
                                      : Colors.blue),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
