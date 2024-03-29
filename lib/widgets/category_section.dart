import 'package:flutter/material.dart';

import 'package:demaciaapp/data.dart';
import 'card_scroll_widget.dart';

class CategorySection extends StatefulWidget {
  @override
  _CategorySectionState createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  var currentPage = CATEGORIES.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: CATEGORIES.length - 1,
    );
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Categories',
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
                  color: Color(0xFFff6e6e),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Adventure'),
                  ),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                '25+ Stories',
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: <Widget>[
            CardScrollWidget(currentPage),
            Positioned.fill(
              child: PageView.builder(
                itemCount: CATEGORIES.length,
                controller: controller,
                reverse: true,
                itemBuilder: (ctx, index) {
                  return Container();
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
