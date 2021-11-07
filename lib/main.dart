import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Slivers(),
      ),
    );

class Slivers extends StatefulWidget {
  Slivers({Key? key}) : super(key: key);

  @override
  _SliversState createState() => _SliversState();
}

class _SliversState extends State<Slivers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://images.unsplash.com/photo-1593073862407-a3ce22748763?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=80',
                  fit: BoxFit.cover,
                ),
              ),
              leading: Icon(Icons.arrow_back),
              backgroundColor: Colors.green,
              expandedHeight: 200.0,
              title: Text("Slivers AppBar"),
              centerTitle: true,
              pinned: true,
              floating: true,
              snap: true,
            ),
            SliverList(
                delegate: SliverChildListDelegate(List.generate(
                    20,
                    (index) => Container(
                          height: 150.0,
                          child: Center(
                            child: Text(
                              "Hello",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ))))
          ],
        ),
      ),
    );
  }
}
