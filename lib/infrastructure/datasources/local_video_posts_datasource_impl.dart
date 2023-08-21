import 'package:tok_tik/domain/entities/video_post.dart';
import '../../domain/datasources/video_posts_datasource.dart';
import '../../shared/data/local_video_posts.dart';
import '../models/local_video_model.dart';

class LocalVideoPostsDataSourceImpl extends VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((e) => LocalVideoModel.fromJson(e).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
