import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'UI Designing',
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  int _cIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Home Page'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,),
        drawer: Drawer(
          child: new ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: new Text(''),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage("images/top_background_image.jpeg"),
                        fit: BoxFit.cover)
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: new ListView(
          children: <Widget>[
            new Center(
              child: new Image.asset(
                'images/top_background_image.jpeg',
                width: double.infinity,
                height: 220.0,
                fit: BoxFit.fill,
              ),
            ),
            new Container(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new InkWell(
                    onTap: () => debugPrint('Image 1 Clicked!'),
                    child: new Container(
                      child: new Image.asset(
                        'images/image_ic.jpeg',
                        width: 180.0,
                        height: 180.0,
                      ),
                    ),
                  ),
                  new InkWell(
                    onTap: () => debugPrint('Image 2 Clicked!'),
                    child: new Container(
                      child: new Image.asset(
                        'images/m_icon.jpg',
                        width: 180.0,
                        height: 180.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new InkWell(
                    onTap: () => debugPrint('Image 3 Clicked!'),
                    child: new Container(
                      child: new Image.asset(
                        'images/m_icon.jpg',
                        width: 180.0,
                        height: 180.0,
                      ),
                    ),
                  ),
                  new InkWell(
                    onTap: () => debugPrint('Image 4 Clicked'),
                    child: new Container(
                      child: new Image.asset(
                        'images/image_ic.jpeg',
                        width: 180.0,
                        height: 180.0,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.speaker_notes), title: Text('Notes')),
            BottomNavigationBarItem(
                icon: Icon(Icons.import_contacts), title: Text('Bible')),
            BottomNavigationBarItem(
                icon: Icon(Icons.call_made), title: Text('Text')),
            BottomNavigationBarItem(
                icon: Icon(Icons.scanner), title: Text('Contact Us'))
          ],
          onTap: (index) => debugPrint(index.toString()),
        ));
  }
}
