import 'package:flutter/material.dart';
import 'package:portfolio/constance/constance.dart';
import 'package:portfolio/main.dart';

class BagScreen extends StatefulWidget {
  @override
  _BagScreenState createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  int count = 1;
  int count1 = 1;
  int count2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 6,
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.Home);
              },
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).textTheme.headline6.color,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Text("My Bag",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.headline6.color,
                        )),
                Expanded(child: SizedBox()),
                Text("Total 3 items",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 14,
                          color: Theme.of(context).textTheme.headline6.color,
                        )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: <Widget>[
                count == 0
                    ? Container()
                    : Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            child: Container(
                              height: 105,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Theme.of(context).disabledColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50,
                            ),
                            child: Image.asset(
                              ConstanceData.nike4Icon,
                              height: 120,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "NIKE AIR-270",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .color,
                                      ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$120.00",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .color,
                                      ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 130),
                                  child: Row(
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            count--;
                                          });
                                        },
                                        child: Container(
                                          height: 25,
                                          width: 35,
                                          color: Theme.of(context).dividerColor,
                                          child: Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "$count",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            count++;
                                          });
                                        },
                                        child: Container(
                                          height: 25,
                                          width: 35,
                                          color: Theme.of(context).dividerColor,
                                          child: Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: 30,
                ),
                count1 == 0
                    ? Container()
                    : Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            child: Container(
                              height: 105,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Theme.of(context).disabledColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 220,
                            ),
                            child: Image.asset(ConstanceData.nike2Icon),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Text(
                                    "AIR JORDANS 5 LANKEY JSP",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
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
                                  height: 10,
                                ),
                                Text(
                                  "\$190.00",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .color,
                                      ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 130),
                                  child: Row(
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            count1--;
                                          });
                                        },
                                        child: Container(
                                          height: 25,
                                          width: 35,
                                          color: Theme.of(context).dividerColor,
                                          child: Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "$count1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            count1++;
                                          });
                                        },
                                        child: Container(
                                          height: 25,
                                          width: 35,
                                          color: Theme.of(context).dividerColor,
                                          child: Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: 30,
                ),
                count2 == 0
                    ? Container()
                    : Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            child: Container(
                              height: 105,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Theme.of(context).disabledColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 210,
                              left: 30,
                            ),
                            child: Image.asset(
                              ConstanceData.nike1Icon,
                              height: 100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Text(
                                    "AIR JORDANS 5 LANKEY JSP",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
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
                                  height: 10,
                                ),
                                Text(
                                  "\$190.00",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .color,
                                      ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 130),
                                  child: Row(
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            count2--;
                                          });
                                        },
                                        child: Container(
                                          height: 25,
                                          width: 35,
                                          color: Theme.of(context).dividerColor,
                                          child: Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "$count2",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  .color,
                                            ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            count2++;
                                          });
                                        },
                                        child: Container(
                                          height: 25,
                                          width: 35,
                                          color: Theme.of(context).dividerColor,
                                          child: Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: Divider(),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Total",
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontSize: 18,
                              color: Theme.of(context).textTheme.bodyText2.color,
                            ),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        "\$510.40",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).textTheme.headline6.color,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => BagScreen()));
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.red),
                            child: Center(
                              child: Text("NEXT",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                          fontSize: 14, color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
