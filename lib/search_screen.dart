import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final String searchText;

  const SearchScreen({Key? key, required this.searchText}):super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.searchText, style: TextStyle(color: Colors.black, fontSize: 30),),
            Container(height: 10,),
            FlatButton(
              onPressed: (){
                  Navigator.pop(context);
                },
              child: Text('Go back to main screen', style: TextStyle(color: Colors.black),),
            )
          ],
        )
      ),
    );
  }
}

