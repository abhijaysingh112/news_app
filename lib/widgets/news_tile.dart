import 'package:flutter/material.dart';
import '../models/news_articles.dart';

class NewsTile extends StatelessWidget {
  final NewsArticle article;
  final VoidCallback onTap;

  const NewsTile({super.key, required this.article, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: article.urlToImage.isNotEmpty
          ? Image.network(article.urlToImage, width: 60, fit: BoxFit.cover)
          : const Icon(Icons.article),
      title: Text(article.title, maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle:
          Text(article.description, maxLines: 2, overflow: TextOverflow.ellipsis),
      onTap: onTap,
    );
  }
}
