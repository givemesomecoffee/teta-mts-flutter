import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/news_item.dart';

class NewsCell extends StatelessWidget {
  const NewsCell({super.key, required this.newsItemData});

  final NewsItemData newsItemData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
//leading: CircleAvatar(
//backgroundImage:user.photoUrl != null ? NetworkImage(user.photoUrl!) : null,),
        title: Text(newsItemData.title!)
    );
  }
}
