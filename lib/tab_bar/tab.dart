import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          centerTitle: true,
          backgroundColor: Colors.green,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.symmetric(horizontal: 30),
            tabs: [
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(child: Text("Chats")),
              Tab(child: Text("Status")),
              Tab(child: Text("Calls"))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('camera screen'),
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
            Column(children: [Text('status')],),
            Column(children: [Text('calls')],)
          ],
        ),
      ),
    );
  }
}
