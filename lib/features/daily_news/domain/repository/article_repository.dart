import 'package:news_app/features/daily_news/domain/entities/article.dart';
import 'package:news_app/core/resources/data_state.dart';

abstract class ArticleRepository {
  
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}