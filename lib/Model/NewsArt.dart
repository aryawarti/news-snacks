
class NewsArt {
  late String imagUrl;
  late String newsHead;
  late String newsDes;
  late String newsCnt;
  late String newsUrl;

    NewsArt({
    required this.imagUrl,
    required this.newsCnt,
    required this.newsDes,
    required this.newsHead,
    required this.newsUrl,
});

   static fromApiToApp(Map<String,dynamic> article){
       return NewsArt(
           imagUrl: article["urlToImage"]?? "https://thumbs.dreamstime.com/z/breaking-news-media-announcement-announce-information-megaphone-hand-72988179.jpg?w=992",
           newsCnt: article["content"] ?? "--",
           newsDes: article["description"]?? "--",
           newsHead: article["title"] ??"--",
           newsUrl: article["url"]?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en",
       );
    }



}