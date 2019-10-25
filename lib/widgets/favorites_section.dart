import 'package:flutter/material.dart';

class FavoritesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Favorites',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 46.05,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 38.0,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10.0),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Latest'),
                  ),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                '3+ Stories',
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
        /////////////////////////////////////////////////////
        SizedBox(
          height: 20.0,
        ),
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: <Widget>[
              Image.asset('assets/images/favoritepreview.png'),
            ],
          ),
        ),
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: <Widget>[
              Image.asset('assets/images/favoritepreview2.png'),
            ],
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.all(8),
        //   child: Image.asset('assets/images/favoritepreview.jpg',
        //       height: 222.0, width: 296.0),
        // )
      ],
    );
  }
}
