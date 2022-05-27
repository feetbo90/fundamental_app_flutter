
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fundamental_aplikasi_flutter/data/api_service.dart';
import 'package:fundamental_aplikasi_flutter/data/model/article.dart';
import 'package:fundamental_aplikasi_flutter/screens/module_seven/learning_cuppertion/article_detail_page.dart';

import '../../../model/article.dart';
import '../../../styles/styles.dart';
import '../../../widget/platform_widget.dart';
import '../../module_eight/card_article.dart';

class ArticleListPage extends StatefulWidget {
  static const routeName = '/home_page';

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {

  late Future<ArticlesResult> _article;

  @override
  void initState() {
    super.initState();
    _article = ApiService().topHeadlines();
  }


  Widget _buildList(BuildContext context) {

    return FutureBuilder(
      future: _article,
      builder: (context, AsyncSnapshot<ArticlesResult> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data?.articles.length,
              itemBuilder: (context, index) {
                var article = snapshot.data?.articles[index];
                return CardArticle(article: article!);
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Text('');
          }
        }
      },
    );

    // yang biasa
    // return FutureBuilder<String>(
    //   future: DefaultAssetBundle.of(context).loadString('assets/articles.json'),
    //   builder: (context, snapshot) {
    //     final List<Article> articles = parseArticles(snapshot.data);
    //     return ListView.builder(
    //       itemCount: articles.length,
    //       itemBuilder: (context, index) {
    //         return _buildArticleItem(context, articles[index]);
    //       },
    //     );
    //   },
    // );
  }

  // Widget _buildArticleItem(BuildContext context, Article article) {
  //   return Material(
  //     color: primaryColor,
  //     child: ListTile(
  //       contentPadding:
  //       const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  //       leading: Hero(
  //         tag: article.urlToImage,
  //         child: Image.network(
  //           article.urlToImage,
  //           width: 100,
  //         ),
  //       ),
  //       title: Text(
  //         article.title,
  //       ),
  //       subtitle: Text(article.author),
  //       onTap: () {
  //         Navigator.pushNamed(context, ArticleDetailPage.routeName,
  //             arguments: article);
  //       },
  //     ),
  //   );
  // }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('News App'),
        transitionBetweenRoutes: false,
      ),
      child: _buildList(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
