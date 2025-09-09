import 'package:flutter/material.dart';

/*
the purpose of this syntax to import the flutter material design library
widgets
import- dart keywords to include external libraries

package:flutter/ - refers to material package that comes w/ flutter widgets

this is essential for building Flutter apps w/ standard UI

 */


void main (){
  runApp (const MyApp());
}

/*
Entry point of the Flutter app
void main () - main function, Starting point of any dart program

runApp() Flutter function that initializes the app and attaches the root widget
(MyApp) to the screen

const MyApp() - create an instance of the MyApp widget, marked const for
compile-time optimization (immutable configuration)


**/

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }

}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.network('abbott-elementary.jpeg'),
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Abbott-elementary',
              style: TextStyle(fontSize: 50),
            ),
          const SizedBox(height: 20),
          const Text(
            'Abbott Elementary is a mockumentary sitcom about the passionate, underfunded teachers and staff at an under-resourced public elementary school in Philadelphia, who are dedicated to improving the lives of their students despite systemic challenges. The series follows optimistic second-grade teacher Janine Teagues and her colleagues, including substitute-turned-first-grade teacher Gregory Eddie, as they navigate the daily realities of teaching, advocate for better resources, and deal with their quirky principal, Ava Coleman.'
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          ],
        )
      )
    );


  }
}

/*
defined as the root widget (main container) of the app

class MyApp extends StatelessWidget- MyApp is custom that's extends StatelessWidget

StatelessWidget - base class for widgets that do not hold mutable state

const MyApp({super.key}); - constructor super.key passes an optional key to the base class

key uniquely identify widgets tree

const - ensures immutable constructor

MaterialApp
- sets up app structure: navigation, them,es, home screen
- title - visible in the task switcher
theme - ThemeData(primarySwatch: Colors,blue) sets primary color palette
- home : const MyHomePage() sets an initial screen

 */