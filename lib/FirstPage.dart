import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  FirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  final _tab = <Tab> [
    const Tab( text: 'map', icon: Icon(Icons.map)),
    const Tab( text: 'message', icon: Icon(Icons.message)),
    const Tab( text: 'anniversary', icon: Icon(Icons.cake))
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tab.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("map"),
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
            bottom: TabBar(
                tabs: _tab
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              TabPage(title: 'map', icon: Icons.map),
              TabPage(title: 'message', icon: Icons.message),
              TabPage(title: 'anniversary', icon: Icons.cake),
            ],
          ),
        )
    );
  }
}

// TabPage
class TabPage extends StatelessWidget{
  final IconData icon;
  final String title;

  const TabPage({required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.displayMedium;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 64.0, color: Colors.brown),
            Text(title, style: textStyle)
          ],
      ),
    );
  }

}