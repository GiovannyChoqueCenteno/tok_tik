import 'package:flutter/material.dart';
import 'package:tok_tik/presentation/widgets/videoplayer/fullscreen_player.dart';
import 'package:tok_tik/presentation/widgets/videoplayer/video_buttons_widget.dart';

import '../../../domain/entities/video_post.dart';

class VideoScrollableWidget extends StatelessWidget {
  const VideoScrollableWidget({required this.videos, super.key});

  final List<VideoPost> videos;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),
            Positioned(
                bottom: 12,
                right: 20,
                child: VideoButtonsWidget(videoPost: videoPost))
          ],
        );
      },
    );
  }
}
