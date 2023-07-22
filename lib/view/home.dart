import 'package:flutter/material.dart';
import 'package:news_snacks/Model/NewsArt.dart';
import 'package:news_snacks/controller/fetchNews.dart';
import 'package:news_snacks/view/Widget/NewsContainer.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   bool isLoading=true;
   late NewsArt newsArt;
  GetNews() async {
    newsArt = await FetchNews.fetchNews();
    setState(() {
      isLoading=false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value){
            setState(() {
              isLoading=true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {

            GetNews();
            return isLoading? Center(child: CircularProgressIndicator(),):NewsContainer(
                imagUrl: newsArt.imagUrl,
                newsDes: newsArt.newsDes,
                newsCnt: newsArt.newsCnt,
                newsHead: newsArt.newsHead,
                newsUrl: newsArt.newsUrl, );
          }),
    );
  }
}
