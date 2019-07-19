import 'package:flutter/material.dart';
import 'package:hello/component/NavigationDrawer.dart';
import 'package:hello/models/FoodItems.dart';
import 'package:hello/service/FoodItemService.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  var foodItems = List<FoodItem>();

  void initState(){
    this.foodItems = _initFoodItems();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: new Scaffold(
        body: ListView.builder(
            itemCount: foodItems.length,
            itemBuilder: (BuildContext context, int index) {
              final item = foodItems[index];
              return ListTile(
                  leading: CircleAvatar(child: Text('${item.name[0]}')),
                  title: Text(item.name),
                  subtitle: Text(item.description),
                  onTap: () {});
            }),
        floatingActionButton:
            FloatingActionButton(onPressed: null, child: Icon(Icons.add)),
        drawer: NavigationalDrawer(),
        appBar: new AppBar(actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ], centerTitle: true, title: new Text('Gmail App')),
      ),
    );
  }

  _initFoodItems() {
    FoodItemService.getAllFoodItems().then((response) {
      setState(() {
        foodItems = response;
      });
    });
  }
}
