import 'package:tok_tik/domain/datasources/video_posts_datasource.dart';
import 'package:tok_tik/domain/entities/video_post.dart';

import '../../domain/repositories/videos_posts_repository.dart';

class VideoPostsRepositoryImpl extends VideoPostsRepository {
  final VideoPostsDatasource videoPostsDatasource;

  VideoPostsRepositoryImpl({required this.videoPostsDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    // TODO: implement getTrendingVideosByPage
    return videoPostsDatasource.getTrendingVideosByPage(page);
  }
}
