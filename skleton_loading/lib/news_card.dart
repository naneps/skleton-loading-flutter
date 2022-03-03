import 'package:flutter/material.dart';
import 'package:skleton_loading/constants.dart';

// void main() => runApp(MaterialApp(
//       home: NewsCard(),
//     ));

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key, this.image}) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(image!),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Euronews",
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: defaultPadding / 2,
                    ),
                    child: Text(
                      "On politics with Lisa Loureniani: Warren’s growing crowds",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Politics",
                        style: TextStyle(color: primaryColor),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding / 2),
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: grayColor,
                        ),
                      ),
                      Text(
                        "3m ago",
                        style: TextStyle(color: grayColor),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
