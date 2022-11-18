import 'package:find_doctor/widget/card_widget.dart';
import 'package:flutter/material.dart';

class CardDesign extends StatefulWidget {
  const CardDesign({Key? key}) : super(key: key);

  @override
  _CardDesignState createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> with SingleTickerProviderStateMixin {


  TabController? _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Team',
            style: TextStyle(fontSize: 30),
          ),
          leading:
          IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              child: TabBar(
                  isScrollable: true,
                  indicatorPadding: EdgeInsets.all(1),
                  indicatorColor: Colors.green,
                  indicatorWeight: 5,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  tabs: [
                    Text(
                      "Men",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "Women",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "Under-23s",
                      style: TextStyle(color: Colors.black),
                    )
                  ]),
            ),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    CardWidget(
                        "assets/images/general.png",
                        "General Medicine",
                        "1200 Doctors"),
                    CardWidget(
                        "assets/images/derma.png",
                        "General Medicine",
                        "1200 Doctors"),
                    CardWidget(
                        "assets/images/gyne.png",
                        "General Medicine",
                        "1200 Doctors"),
                  ]),
            )
          ],
        )
    );
  }
}

