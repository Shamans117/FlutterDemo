import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/demo.dart';
import 'package:flutter_app/layout.dart' as layout;

void main()=>runApp(layout.MyApp());

//
//void main() => runApp(new MaterialApp(
//  title: 'Shopping App',
//  home:ShoppingList(
//    products: <Product>[
//      Product(name: 'Apple'),
//      Product(name:'Banana'),
//      Product(name:'Candy')
//    ],
//  )
//));


class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(color: Colors.blue[500]),
        child: new Row(
          children: <Widget>[
            new IconButton(
                icon: new Icon(Icons.menu),
                tooltip: 'Navigation Menu',
                onPressed: null),
            new Expanded(child: title),
            new IconButton(
                icon: new Icon(Icons.search),
                tooltip: 'Search',
                onPressed: null)
          ],
        ));
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Example Title',
              style: Theme
                  .of(context)
                  .primaryTextTheme
                  .title,
            ),
          ),
          new Expanded(
              child: new Center(
                child: new Text('Hello,World!'),
              ))
        ],
      ),
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text('Hello,World!'),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: 'Add', child: new Icon(Icons.add), onPressed: null),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print('MyButton was tapped');
      },
      child: new Container(
        height: 36,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(3),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text('Engage'),
        ),
      ),
    );
  }

}

//void main() => runApp(new Center(
//      child: new Text(
//        'Hello World!',
//        textDirection: TextDirection.ltr,
//        style: new TextStyle(color: Colors.red) ,
//      ),
//    ));
//void main() => runApp(new MyApp());
//
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My First Flutter App',
        theme: new ThemeData(
          primaryColor: Colors.white,
        ),
        home: MyButton());
  }
}
//
//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  final _suggestions = <WordPair>[];
//  final _saved = new Set<WordPair>();
//  final _biggerFont = const TextStyle(fontSize: 18.0);
//
//  Widget _buildRow(WordPair pair) {
//    final alreadySaved = _saved.contains(pair);
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//      trailing: new Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
//          color: alreadySaved ? Colors.red : null),
//      onTap: () {
//        setState(() {
//          if (alreadySaved) {
//            _saved.remove(pair);
//          } else {
//            _saved.add(pair);
//          }
//        });
//      },
//    );
//  }
//
//  Widget _buildSuggestions() {
//    return new ListView.builder(
//      itemBuilder: (context, i) {
//        if (i.isOdd) return new Divider();
//
//        final index = i ~/ 2;
//        if (index >= _suggestions.length) {
//          _suggestions.addAll(generateWordPairs().take(10));
//        }
//        return _buildRow(_suggestions[index]);
//      },
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('StartUp Name Generator'),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
//        ],
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//
//  void _pushSaved() {
//    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
//      final tiles = _saved.map((pair) {
//        return new ListTile(
//          title: new Text(
//            pair.asPascalCase,
//            style: _biggerFont,
//          ),
//        );
//      });
//
//      final divided =
//          ListTile.divideTiles(tiles: tiles, context: context).toList();
//
//      return new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Saved Suggestions'),
//        ),
//        body: new ListView(children: divided),
//      );
//    }));
//  }
//}
