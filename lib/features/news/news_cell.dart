import 'package:flutter/material.dart';
import 'package:news/model/news_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:html_unescape/html_unescape.dart';

class NewsCell extends StatelessWidget {
  const NewsCell({super.key, required this.newsItemData});

  final NewsItemData newsItemData;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CachedNetworkImage(
              height: 200,
              imageUrl: HtmlUnescape().convert(
                  newsItemData.preview?.images?.first.source?.url ?? ""),
              placeholder: (context, url) =>
                  Container(height: 200, color: Colors.blueGrey),
              errorWidget: (context, url, error) {
                print(url.toString());
                print(error.toString());
                return Container(height: 200, color: Colors.blueGrey);
              },
            ),
            Container(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  newsItemData.title ?? "",
                  style: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.bold),
                )),
            if ( newsItemData.selftext?.isNotEmpty == true) ...[
              Container(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(newsItemData.selftext ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: const TextStyle(fontSize: 14.0)))
            ]
          ],
        ));
  }
}
