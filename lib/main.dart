import 'dart:math';

import 'package:flutter/material.dart';

void main() {

  List<Widget> get3Icons() {
    return const [
      Icon(Icons.star, size: 50,),
      Icon(Icons.star, size: 50,),
      Icon(Icons.star, size: 50,)
    ];
  }

  List<Widget> get3Buttons() {
    return [
      ElevatedButton(
        onPressed: () => {},
        child: const Text('Short'),
      ),
      ElevatedButton(
        onPressed: () => {},
        child: const Text('A bit Longer'),
      ),
      ElevatedButton(
        onPressed: () => {},
        child: const Text('The Longest Text button'),
      )
    ];
  }

  List<Widget> getBannerOfStack() {
    return  [
      Banner(message: 'Top Start', location: BannerLocation.topStart),
      Banner(message: 'Top End', location: BannerLocation.topEnd),
      Banner(message: 'Bottom Start', location: BannerLocation.bottomStart),
      Banner(message: 'Bottom End', location: BannerLocation.bottomEnd),
    ];
  }

  List<Widget> positionedItems() {
    return [
      Positioned(child: Icon(Icons.add_location_alt_outlined), left: 50, top: 300,)
    ];
  }

  Widget columnLayoutExample() {
    return Container(
      width: double.infinity,
      color: Colors.amber,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.star, size: 50,),
          ),
          Icon(Icons.star, size: 50,),
          Icon(Icons.star, size: 50,)
        ],
      ),
    );
  }


  Widget rowLayoutExample() {
    return Container(
      color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: get3Icons(),
      ),
    );
  }

  Widget intrinsictWithd() {
    return Center(
      child: Container(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: get3Buttons(),
        ),
      ),
    );
  }

  Widget stackExample() {
    return Stack(
      fit: StackFit.expand,
      children: positionedItems(),
    );
  }

  Widget expandedExample() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.red),
          ),
          flex: 3,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.green),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          flex: 1,
        )
      ],
    );
  }
  
  Widget constrainedBox() {
    return  ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: const Card(
          child: Text('Hello world!'), color: Colors.yellow,
        ),
    );
  }

  Widget alignExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          child: ElevatedButton(child: Text('Button'), onPressed: () => {},),
        ),
        SizedBox(height: 40,),
        ElevatedButton(child: Text('Button'), onPressed: () => {},)
      ],
    );
  }


  Widget containerExample() {
    return Center(
      child: Container(
        // color: Colors.yellow,
        child: Text('Hi'),
        width: 200,
        height: 500,
        // transform: Matrix4.rotationZ(pi / 20),
        decoration:  BoxDecoration(
          color: Colors.red,
          // shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(500)),
          image: const DecorationImage(
            fit: BoxFit.fitWidth,
            image: NetworkImage('https://avatars.githubusercontent.com/u/26883843?v=4', scale: 0.2)
          )
        ),
      ),
    );
  }


  runApp(
    MaterialApp(
      title: 'Flutter Layout Cheat Sheet',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Flutter Layout Cheat Sheet'),
          ),
        ),
        body: containerExample(),
      ),
    )
  );
}