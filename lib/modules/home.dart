import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constance/constance.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/modules/addidasShoesDetail.dart';
import 'package:portfolio/modules/converseShoesDetail.dart';
import 'package:portfolio/modules/jordanShoesDetail.dart';
import 'package:portfolio/modules/nikeShoesDetail.dart';
import 'package:portfolio/modules/pumaShoesDetail.dart';
import 'package:portfolio/modules/reebokShoesDetail.dart';
import 'package:portfolio/modules/vansShoesDetail.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 7);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (currentIndex) {
            setState(() {
              _currentIndex = currentIndex;
            });
          },
          elevation: 10,
          iconSize: 25,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black26,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text(""),
            ),
          ]),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text(
          "Discover",
          style: Theme.of(context).textTheme.headline6.copyWith(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.headline6.color),
        ),
        actions: <Widget>[
          InkWell(
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xffF5F5F5),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 22,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {
              openShowPopup(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Color(0xffF5F5F5),
                child: Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
        bottom: TabBar(
          unselectedLabelColor: Theme.of(context).disabledColor,
          unselectedLabelStyle: Theme.of(context).textTheme.bodyText2.copyWith(
                fontSize: 16,
              ),
          isScrollable: true,
          controller: _controller,
          indicatorColor: Theme.of(context).disabledColor,
          indicatorWeight: 3,
          tabs: [
            Tab(
              child: Text(
                "Nike",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Tab(
              child: Text(
                "Addidas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Tab(
              child: Text(
                "Jordan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Tab(
              child: Text(
                "Puma",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Tab(
              child: Text(
                "Reebok",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Tab(
              child: Text(
                "Vans",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Tab(
              child: Text(
                "Converse",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          ListView(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 15,
                                ),
                                Wrap(direction: Axis.vertical, children: [
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Upcoming",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Featured",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "New",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NikeShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          color:
                                                              Color(0xffDC7C53),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "NIKE",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NikeShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          color:
                                                              Color(0xff889CE4),
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "NIKE",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NikeShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          color:
                                                              Color(0xffB8AC00),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "NIKE",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NikeShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors.red,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "NIKE",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NikeShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color:
                                                                  Colors.grey,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "NIKE",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        SizedBox(),
                                                                        Expanded(
                                                                          child:
                                                                              Icon(
                                                                            Icons.favorite_border,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                18,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NikeShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors
                                                                  .blueAccent,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "NIKE",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "More",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .color,
                                  ),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 160,
                                width: 165,
                                child: Card(
                                  color: Theme.of(context).appBarTheme.color,
                                  elevation: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              width: 20,
                                              color: Colors.red,
                                              child: Wrap(
                                                  direction: Axis.vertical,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Text(
                                                            "New",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2
                                                                .copyWith(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          ConstanceData.nike6Icon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "NIKE AIR_MAX",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$170.00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 160,
                                width: 165,
                                child: Card(
                                  elevation: 5,
                                  color: Theme.of(context).appBarTheme.color,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              width: 20,
                                              color: Colors.red,
                                              child: Wrap(
                                                  direction: Axis.vertical,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Text(
                                                            "New",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2
                                                                .copyWith(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          ConstanceData.nikeLIcon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "NIKE AIR FORCE",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$170.00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          ListView(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 15,
                                ),
                                Wrap(direction: Axis.vertical, children: [
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Upcoming",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Featured",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "New",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddidasShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          color:
                                                              Color(0xffDC7C53),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "ADDIDAS",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddidasShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          color:
                                                              Color(0xff889CE4),
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "ADDIDAS",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddidasShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          color:
                                                              Color(0xffB8AC00),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "ADDIDAS",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddidasShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors.red,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "ADDIDAS",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddidasShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          color: Colors.grey,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "ADDIDAS",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddidasShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors
                                                                  .blueAccent,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "ADDIDAS",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "More",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .color,
                                  ),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Expanded(
                              child: Container(
                                height: 160,
                                width: 165,
                                child: Card(
                                  color: Theme.of(context).appBarTheme.color,
                                  elevation: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              width: 20,
                                              color: Colors.red,
                                              child: Wrap(
                                                  direction: Axis.vertical,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Text(
                                                            "New",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2
                                                                .copyWith(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          ConstanceData.nike6Icon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "ADDIDAS AIR_MAX",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$170.00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 160,
                              width: 165,
                              child: Card(
                                elevation: 5,
                                color: Theme.of(context).appBarTheme.color,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            height: 50,
                                            width: 20,
                                            color: Colors.red,
                                            child: Wrap(
                                                direction: Axis.vertical,
                                                children: [
                                                  RotatedBox(
                                                    quarterTurns: 3,
                                                    child: Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 3),
                                                        child: Text(
                                                          "New",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Icon(
                                            Icons.favorite_border,
                                            color: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .color,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Image.asset(
                                        ConstanceData.nikeLIcon,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "ADDIDAS AIR FORCE",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                            fontSize: 10,
                                            color: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .color,
                                          ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "\$170.00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                            fontSize: 10,
                                            color: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .color,
                                          ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          ListView(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 15,
                                ),
                                Wrap(direction: Axis.vertical, children: [
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Upcoming",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Featured",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "New",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      JordanShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          color:
                                                              Color(0xffDC7C53),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "JORDAN",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      JordanShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          color:
                                                              Color(0xff889CE4),
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "JORDAN",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      JordanShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          color:
                                                              Color(0xffB8AC00),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "JORDAN",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      JordanShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors.red,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "JORDAN",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      JordanShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          color: Colors.grey,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "JORDAN",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      JordanShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors
                                                                  .blueAccent,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "JORDAN",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "More",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .color,
                                  ),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 160,
                                width: 165,
                                child: Card(
                                  color: Theme.of(context).appBarTheme.color,
                                  elevation: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              width: 20,
                                              color: Colors.red,
                                              child: Wrap(
                                                  direction: Axis.vertical,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Text(
                                                            "New",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2
                                                                .copyWith(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          ConstanceData.nike6Icon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "PUMA AIR_MAX",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$170.00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 160,
                                width: 165,
                                child: Card(
                                  elevation: 5,
                                  color: Theme.of(context).appBarTheme.color,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              width: 20,
                                              color: Colors.red,
                                              child: Wrap(
                                                  direction: Axis.vertical,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Text(
                                                            "New",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2
                                                                .copyWith(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          ConstanceData.nikeLIcon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "PUMA AIR FORCE",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$170.00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          ListView(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 15,
                                ),
                                Wrap(direction: Axis.vertical, children: [
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Upcoming",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Featured",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "New",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PumaShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          color:
                                                              Color(0xffDC7C53),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "PUMA",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PumaShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          color:
                                                              Color(0xff889CE4),
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "PUMA",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PumaShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          color:
                                                              Color(0xffB8AC00),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "PUMA",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PumaShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors.red,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "PUMA",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PumaShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          color: Colors.grey,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "PUMA",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PumaShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors
                                                                  .blueAccent,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "PUMA",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "More",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .color,
                                  ),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 160,
                                width: 165,
                                child: Card(
                                  color: Theme.of(context).appBarTheme.color,
                                  elevation: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              width: 20,
                                              color: Colors.red,
                                              child: Wrap(
                                                  direction: Axis.vertical,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Text(
                                                            "New",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2
                                                                .copyWith(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          ConstanceData.nike6Icon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "PUMA AIR_MAX",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$170.00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 160,
                                width: 165,
                                child: Card(
                                  elevation: 5,
                                  color: Theme.of(context).appBarTheme.color,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              width: 20,
                                              color: Colors.red,
                                              child: Wrap(
                                                  direction: Axis.vertical,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Text(
                                                            "New",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2
                                                                .copyWith(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          ConstanceData.nikeLIcon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "PUMA AIR FORCE",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$170.00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          ListView(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 15,
                                ),
                                Wrap(direction: Axis.vertical, children: [
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Upcoming",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Featured",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .color,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "New",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .color,
                                          ),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReebokShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          color:
                                                              Color(0xffDC7C53),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "REEBOK",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReebokShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          color:
                                                              Color(0xff889CE4),
                                                          elevation: 5,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "REEBOK",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReebokShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          color:
                                                              Color(0xffB8AC00),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "REEBOK",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReebokShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors.red,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "REEBOK",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReebokShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder: (_, anim, __) =>
                                                Transform.scale(
                                                  origin: Offset(-10, 10),
                                                  scale: anim.value,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Card(
                                                          elevation: 5,
                                                          color: Colors.grey,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    right: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "REEBOK",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            SizedBox()),
                                                                    Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Text(
                                                                  "AIR -270",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Text(
                                                                  "\$150.00",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 40,
                                                          left: 30,
                                                        ),
                                                        child: Image.asset(
                                                          ConstanceData
                                                              .nike4Icon,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReebokShoesDetailScreen()));
                                        },
                                        child: Animator(
                                            tween:
                                                Tween<double>(begin: 0, end: 1),
                                            duration: Duration(seconds: 1),
                                            cycles: 1,
                                            builder:
                                                (_, anim, __) =>
                                                    Transform.scale(
                                                      origin: Offset(-10, 10),
                                                      scale: anim.value,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Card(
                                                              elevation: 5,
                                                              color: Colors
                                                                  .blueAccent,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: <
                                                                      Widget>[
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "REEBOK",
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText2
                                                                              .copyWith(
                                                                                fontSize: 12,
                                                                                color: Colors.white,
                                                                              ),
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                                SizedBox()),
                                                                        Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              18,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      "AIR -270",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline6
                                                                          .copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    Text(
                                                                      "\$150.00",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodyText2
                                                                          .copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 40,
                                                              left: 30,
                                                            ),
                                                            child: Image.asset(
                                                              ConstanceData
                                                                  .nike4Icon,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "More",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .color,
                                  ),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 160,
                                width: 165,
                                child: Card(
                                  color: Theme.of(context).appBarTheme.color,
                                  elevation: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              width: 20,
                                              color: Colors.red,
                                              child: Wrap(
                                                  direction: Axis.vertical,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Text(
                                                            "New",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2
                                                                .copyWith(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          ConstanceData.nike6Icon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "REEBOK AIR_MAX",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$170.00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 160,
                                width: 165,
                                child: Card(
                                  elevation: 5,
                                  color: Theme.of(context).appBarTheme.color,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              width: 20,
                                              color: Colors.red,
                                              child: Wrap(
                                                  direction: Axis.vertical,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 3,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Text(
                                                            "New",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2
                                                                .copyWith(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Icon(
                                              Icons.favorite_border,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          ConstanceData.nikeLIcon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "REEBOK AIR FORCE",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$170.00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 10,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          ListView(
            children: [
              Container(
                height: 250,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 15,
                            ),
                            Wrap(direction: Axis.vertical, children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  "Upcoming",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 12,
                                        color: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .color,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  "Featured",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .color,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  "New",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 12,
                                        color: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .color,
                                      ),
                                ),
                              )
                            ]),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VansShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      color: Color(0xffDC7C53),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "VANS",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VansShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      color: Color(0xff889CE4),
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "VANS",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VansShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      color: Color(0xffB8AC00),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "VANS",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VansShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      color: Colors.red,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "VANS",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VansShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      color: Colors.grey,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "VANS",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VansShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      color: Colors.blueAccent,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "VANS",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "More",
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontSize: 16,
                                color:
                                    Theme.of(context).textTheme.headline6.color,
                              ),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 160,
                            width: 165,
                            child: Card(
                              color: Theme.of(context).appBarTheme.color,
                              elevation: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          height: 50,
                                          width: 20,
                                          color: Colors.red,
                                          child: Wrap(
                                              direction: Axis.vertical,
                                              children: [
                                                RotatedBox(
                                                  quarterTurns: 3,
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 3),
                                                      child: Text(
                                                        "New",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            .copyWith(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Icon(
                                          Icons.favorite_border,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      ConstanceData.nike6Icon,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "VANS AIR_MAX",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontSize: 10,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$170.00",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontSize: 10,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            height: 160,
                            width: 165,
                            child: Card(
                              elevation: 5,
                              color: Theme.of(context).appBarTheme.color,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          height: 50,
                                          width: 20,
                                          color: Colors.red,
                                          child: Wrap(
                                              direction: Axis.vertical,
                                              children: [
                                                RotatedBox(
                                                  quarterTurns: 3,
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 3),
                                                      child: Text(
                                                        "New",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            .copyWith(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Icon(
                                          Icons.favorite_border,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      ConstanceData.nikeLIcon,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "VANS AIR FORCE",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontSize: 10,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$170.00",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontSize: 10,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          ListView(
            children: [
              Container(
                height: 250,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 15,
                            ),
                            Wrap(direction: Axis.vertical, children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  "Upcoming",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 12,
                                        color: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .color,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  "Featured",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .color,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  "New",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 12,
                                        color: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .color,
                                      ),
                                ),
                              )
                            ]),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ConverseShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      color: Color(0xffDC7C53),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "COVERSE",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ConverseShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      color: Color(0xff889CE4),
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "COVERSE",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ConverseShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      color: Color(0xffB8AC00),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "COVERSE",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ConverseShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      color: Colors.red,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "COVERSE",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ConverseShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      color: Colors.grey,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "COVERSE",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ConverseShoesDetailScreen()));
                                    },
                                    child: Animator(
                                        tween: Tween<double>(begin: 0, end: 1),
                                        duration: Duration(seconds: 1),
                                        cycles: 1,
                                        builder: (_, anim, __) =>
                                            Transform.scale(
                                              origin: Offset(-10, 10),
                                              scale: anim.value,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Card(
                                                      elevation: 5,
                                                      color: Colors.blueAccent,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  "CONVERSE",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      .copyWith(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        SizedBox()),
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              "AIR -270",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline6
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "\$150.00",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2
                                                                  .copyWith(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 40,
                                                      left: 30,
                                                    ),
                                                    child: Image.asset(
                                                      ConstanceData.nike4Icon,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "More",
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontSize: 16,
                                color:
                                    Theme.of(context).textTheme.headline6.color,
                              ),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 160,
                            width: 165,
                            child: Card(
                              color: Theme.of(context).appBarTheme.color,
                              elevation: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          height: 50,
                                          width: 20,
                                          color: Colors.red,
                                          child: Wrap(
                                              direction: Axis.vertical,
                                              children: [
                                                RotatedBox(
                                                  quarterTurns: 3,
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 3),
                                                      child: Text(
                                                        "New",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            .copyWith(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Icon(
                                          Icons.favorite_border,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      ConstanceData.nike6Icon,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "CONVERSE AIR_MAX",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontSize: 10,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$170.00",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontSize: 10,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            height: 160,
                            width: 165,
                            child: Card(
                              elevation: 5,
                              color: Theme.of(context).appBarTheme.color,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          height: 50,
                                          width: 20,
                                          color: Colors.red,
                                          child: Wrap(
                                              direction: Axis.vertical,
                                              children: [
                                                RotatedBox(
                                                  quarterTurns: 3,
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 3),
                                                      child: Text(
                                                        "New",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            .copyWith(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Icon(
                                          Icons.favorite_border,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      ConstanceData.nikeLIcon,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "CONVERSE AIR FORCE",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontSize: 10,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$170.00",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontSize: 10,
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .color,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  int light = 1;
  int dark = 2;

  changeColor(BuildContext context, int color) {
    if (color == light) {
      MyApp.setCustomeTheme(context, 6);
    } else {
      MyApp.setCustomeTheme(context, 7);
    }
  }

  openShowPopup(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Center(
              child: Text(
                'Select theme mode',
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.headline6.color,
                      fontSize: 18,
                    ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        changeColor(context, light);
                      },
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor:
                            Theme.of(context).textTheme.headline6.color,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 32,
                          child: Text(
                            'Light',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        changeColor(context, dark);
                      },
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor:
                            Theme.of(context).textTheme.headline6.color,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 32,
                          child: Text(
                            'Dark',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          );
        });
  }
}
