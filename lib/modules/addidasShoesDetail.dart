import 'package:flutter/material.dart';
import 'package:portfolio/constance/constance.dart';
import 'package:portfolio/modules/bag.dart';
import 'package:portfolio/modules/home.dart';

class AddidasShoesDetailScreen extends StatefulWidget {
  @override
  _AddidasShoesDetailScreenState createState() =>
      _AddidasShoesDetailScreenState();
}

class _AddidasShoesDetailScreenState extends State<AddidasShoesDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        color: Color(0xffDC7C53),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(200),
                        )),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, right: 14),
                          child: Row(
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "Addidas",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                              ),
                              Expanded(child: SizedBox()),
                              CircleAvatar(
                                backgroundColor: Colors.orange[700],
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Image.asset(ConstanceData.nike5Icon),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(ConstanceData.nike6Icon),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4)),
                        child: Image.asset(ConstanceData.nike7Icon),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            ConstanceData.nike6Icon,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 80,
                          decoration: BoxDecoration(
                              // backgroundBlendMode: BlendMode.dstATop,
                              color: Colors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              ConstanceData.nike6Icon,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.play_circle_filled,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 1,
                      width: 100,
                      color: Color(0xffDC7C53),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: 100,
                        color: Theme.of(context).disabledColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Air-Max-270",
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 18,
                          color: Theme.of(context).textTheme.headline6.color,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      "\$150.00",
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 18,
                          color: Theme.of(context).textTheme.headline6.color,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "The Addidas Air Max 270 amps up an icon with a huge Max Air\nunit for cushioning under every step.It features a stretchy\ninner sleeve for a snug. sock-like fit.",
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 12,
                            height: 1.5,
                            color: Theme.of(context).textTheme.caption.color,
                          ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "MORE DETAILS",
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          color: Theme.of(context).textTheme.bodyText2.color,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 1,
                      endIndent: 273,
                      color: Theme.of(context).textTheme.bodyText2.color,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Size",
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Theme.of(context).textTheme.bodyText2.color,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          "UK",
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontSize: 18,
                              color: Theme.of(context).textTheme.bodyText2.color,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "USA",
                          style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 18,
                                color:
                                    Theme.of(context).textTheme.caption.color,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                    color: Theme.of(context).dividerColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Try it",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              .color,
                                        )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                    color: Theme.of(context).dividerColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("7.5",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              .color,
                                        )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                    color: Theme.of(context).dividerColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("8",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                            fontSize: 16, color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                    color: Theme.of(context).dividerColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("9.5",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              .color,
                                        )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
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
                                  child: Text("ADD TO BAG",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                              fontSize: 14,
                                              color: Colors.white)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
