import 'package:flutter/material.dart';
import 'package:ui_2/data/colors.dart';
import 'package:ui_2/data/contribution.data.dart';
import 'package:ui_2/views/contribution.view.dart';
import 'package:ui_2/views/widgets/contributions.dart';

class UserView extends StatefulWidget {
  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              ListTile(
                title: Text(
                  'Mon, Feb 20, 2020',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                subtitle: Text(
                  'Hi, Cheche Uduma',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                trailing: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      'https://image.freepik.com/vector-gratis/fondo-color-hombre-riendo_23-2147631736.jpg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                              child: TextField(
                    // style: TextStyle(fontSize: MediaQuery.of(context).size.width / 28,),
                    // controller: _searchController,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.025,
                          horizontal: 5.0),
                      prefixIcon: Icon(Icons.search, color: red),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.blue.withOpacity(0.12),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      hintText: 'Search',
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Container(
                height: 280,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal:18.0),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: contributions
                        .map((contribution) => Contribution(
                            imageUrl: contribution.date,
                            type: contribution.type,
                            date: contribution.date))
                        .toList()),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Bonus & Interest',
                      style:
                          TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.015),

                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContributionView()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.blue.withOpacity(0.12),
                          ),
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.star_border,
                                color: red,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10.0),

                                  // alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Contribution bonus',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Text(
                                        'Your bonus is ready, Enjoy',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: red,
                              )
                            ],
                          ),
                        ))
                    // ListTile(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => ContributionView()),
                    //     );
                    //   },
                    //   title: Text('Contribution bonus'),
                    //   subtitle: Text('Your bonus is ready, Enjoy'),
                    //   leading: Icon(Icons.star_border, color: red,),
                    //   trailing: Icon(Icons.arrow_forward_ios, color: red,),
                    // )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Activities',
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
                                'One Time',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text('8,000'),
                            Text(
                              'Jan 18, 2020',
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
                            Text('15,000'),
                            Text(
                              'Jan 16, 2020',
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
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            ],
          ),
        ),
      ),
    );
  }
}
