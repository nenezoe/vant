import 'package:flutter/material.dart';
import 'package:vant/widgets/card_item.dart';

Widget buildCard(CardItem item) => Container(
      width: 120,
      child: Column(children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 4 / 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                child: Ink.image(
                  image: AssetImage(item.urlImage),
                  fit: BoxFit.cover,
                  child: InkWell(onTap: () {
                    //     Navigator.push(
                    //     context, MaterialPageRoute(
                    //     builder: (context) => SecondScreen(item: item)
                    // ),
                    //     );
                  }),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          item.title,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ]),
    );
