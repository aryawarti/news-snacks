
import 'package:flutter/material.dart';
import 'package:news_snacks/view/detial_view.dart';

class NewsContainer extends StatelessWidget {
  String imagUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;

  NewsContainer(
      {Key? key,
      required this.imagUrl,
      required this.newsDes,
      required this.newsCnt,
      required this.newsHead,
      required this.newsUrl,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInImage.assetNetwork(
          height: 350, width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              placeholder:"assets/placeholder.jpg", image:imagUrl),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                   newsHead.length>70 ?
                  "${newsHead.substring(0,70)}...":newsHead,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  newsDes,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 12,
                  ),
                ),   Text(
                     newsCnt.length >250 ? newsCnt.substring(0,250):
                    "${ newsCnt.toString().substring(0,newsCnt.length-15)}...",
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 16,
                  ),

                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailViewScreen(newsUrl: newsUrl)));
                    },
                    child: Text("read more")),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
