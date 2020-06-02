import 'package:flutter/material.dart';
import 'package:heroes_client/models/home_list.dart';

class HomeItemWidget extends AspectRatio {
  HomeItemWidget(HomeItem item, double aspectRatio)
      : super(
            aspectRatio: aspectRatio,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  margin: EdgeInsets.only(bottom: 5),
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.75,
                        child: Image.network(
                          item.cover,
                          scale: 0.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 1.75,
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                            child: Text(
                              item.duration,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(item.avatar),
                      backgroundColor: Colors.grey,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text(
                                item.title,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black87),
                                maxLines: 2,
                              ),
                            ),
                            Text(
                              item.author,
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black45),
                              maxLines: 1,
                            ),
                            Text(
                              item.watched > 100000
                                  ? "${item.watched / 100000}万次观看﹒${item.date}"
                                  : "${item.watched}次观看﹒̇${item.date}",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black45),
                              maxLines: 1,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(left: 8),
                      ),
                    ),
                  ],
                ),
              ],
            ));
}
