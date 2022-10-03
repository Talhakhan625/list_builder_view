import 'dart:html';

import 'package:flutter/material.dart';
import 'package:list_builder_view/views/my_drawer.dart';
import 'package:list_builder_view/views/slider_screen.dart';

import '../utils/dummy_data_list.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('List Builder',)),
      ),
      drawer: MyDrawer(),
      body: GridView.builder(
      padding: EdgeInsets.all(20),
      shrinkWrap: true,
itemCount: CatList.length,
gridDelegate: 
// SliverGridDelegateWithFixedCrossAxisCount
SliverGridDelegateWithMaxCrossAxisExtent
(
  // crossAxisCount:4,
  mainAxisExtent: 200,
  mainAxisSpacing: 20,
  crossAxisSpacing: 20,
  childAspectRatio: 1,
  maxCrossAxisExtent: 500, 
  // crossAxisCount: 4, 
  ), 
  itemBuilder: (context, index)=> InkWell(
    onTap: (() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SliderScreen())
      );
    }),
    child: Container(
      
      alignment: Alignment.center,
      // color: CatList[index].catColor,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Colors.red, Colors.red.withOpacity(0.5), 
            CatList[index].catColor.withOpacity(0.5),
            CatList[index].catColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      // child: Text('Container'),
      child: Text(CatList[index].catName),
      ),
  ), 
      ),
    );
  }
}