import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_2/data/colors.dart';

class ContributionView extends StatefulWidget {
  @override
  _ContributionViewState createState() => _ContributionViewState();
}

class _ContributionViewState extends State<ContributionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 2.0),
                      child: Container(
                        width: double.infinity,
                        color: primary,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: CachedNetworkImage(
                          // height: 150,
                          // width: 150,
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://image.freepik.com/free-vector/business-bank-integration-mobile-online-application-with-insurance-health-money-investment_8073-329.jpg',
                        ),
                      ),
                    )),
                    Positioned(
                      top: 30.0,
                      left: 10.0,
                      right: 10.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.arrow_back_ios, color: Colors.white.withOpacity(0.5),),
                        Icon(Icons.notifications_none, color: Colors.white.withOpacity(0.5),),
                      ],
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        )),
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.blue.withOpacity(0.12),
              ),
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0),

                      // alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Add new Contribution',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.add_circle,
                    color: red,
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Recent transactions',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: success.withOpacity(0.2),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.euro_symbol,
                          color: success,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Contributions'),
                            Text(
                              'Periodic',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text('5,000'),
                          Text(
                            'Jan 12, 2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: red.withOpacity(0.2),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.report,
                          color: red,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Contributions'),
                            Text(
                              'One Time',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text('5,000'),
                          Text(
                            'Jan 12, 2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: success.withOpacity(0.2),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.euro_symbol,
                          color: success,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Contributions'),
                            Text(
                              'Periodic',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text('5,000'),
                          Text(
                            'Jan 12, 2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: success.withOpacity(0.2),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.euro_symbol,
                          color: success,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Contributions'),
                            Text(
                              'Periodic',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text('5,000'),
                          Text(
                            'Jan 12, 2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: success.withOpacity(0.2),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.euro_symbol,
                          color: success,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Contributions'),
                            Text(
                              'Periodic',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text('5,000'),
                          Text(
                            'Jan 12, 2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )));
  }
}
