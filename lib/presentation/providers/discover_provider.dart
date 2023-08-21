import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/videos_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videosList = [];
  final VideoPostsRepository videoPostRepository;

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos =
        await videoPostRepository.getTrendingVideosByPage(1);
    videosList.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
