import 'package:flutter/material.dart';
import 'package:skleton_loading/constants.dart';
import 'package:skleton_loading/news_card.dart';
import 'package:skleton_loading/skleton.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  bool? _isLoading;
  @override
  void initState() {
    _isLoading = true;
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "News App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: _isLoading!
            ? ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) => NewsCardSkleton(),
                separatorBuilder: (context, index) => SizedBox(
                  height: defaultPadding,
                ),
              )
            : ListView.separated(
                itemCount: 6,
                itemBuilder: (context, index) => NewsCard(
                  image: "assets/images/Image_$index.png",
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: defaultPadding),
              ),
      ),
    );
  }
}

class NewsCardSkleton extends StatelessWidget {
  const NewsCardSkleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Skleton(
          height: 120,
          width: 120,
        ),
        Skleton(
          width: defaultPadding,
        ),
        Expanded(
          child: Column(
            children: [
              Skleton(width: 80),
              SizedBox(height: defaultPadding / 2),
              Skleton(),
              SizedBox(height: defaultPadding / 2),
              Skleton(),
              SizedBox(height: defaultPadding / 2),
              Row(
                children: [
                  Expanded(
                    child: Skleton(),
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Expanded(
                    child: Skleton(),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
