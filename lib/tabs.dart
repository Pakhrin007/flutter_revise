import 'package:flutter/material.dart';

class BtnAppTab extends StatefulWidget {
  const BtnAppTab({super.key});

  @override
  State<BtnAppTab> createState() => _BtnAppTabState();
}

class _BtnAppTabState extends State<BtnAppTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text("Call Manager"),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
            child: TabBar(
              // indicator: BoxDecoration(
              //   color: Colors.orange
              // ),
              controller: tabController,
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal: 30),

              tabs: [
              Tab(
                child: Text("MIssed"),
              ),
              Tab(
                child: Text("MIssed"),
              ),Tab(
                child: Text("MIssed"),
              )
            ]),
          ),
          Expanded(child: TabBarView(
            controller: tabController,
            children: [

            ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Text('person'),
                    title: Text('person ${index + 1}'),
                  ),
                );
              },
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Text('person'),
                    title: Text('person ${index + 1}'),
                  ),
                );
              },
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Text('person'),
                    title: Text('person ${index + 1}'),
                  ),
                );
              },
            ),
          ]))
        ],
      ),
    );
  }
}
