import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Movies'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Discover",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Container(
                  height: 200,
                ),
              ),
            ),
            MovieCard()
          ],
        )
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Row(
          children: <Widget>[
            Container(
              height: 180,
              child: Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt2294629%2F&psig=AOvVaw39K7JIlJKifcgbaaCXOiYz&ust=1669104301076000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCJD6g57ovvsCFQAAAAAdAAAAABAE')
            ),
            Expanded(
              child: Container(
                height: 180,
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Frozen',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                     )
                    ),
                    SizedBox(height: 10),
                    Expanded(child: Text('Frozen tells the story of Princess Anna as she teams up with an iceman, his reindeer, and a snowman to find her estranged sister Elsa, whose icy powers have inadvertently trapped their kingdom in eternal winter. Frozen underwent several story treatments before being commissioned in 2011 as a screenplay by Lee.'))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



