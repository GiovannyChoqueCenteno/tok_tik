import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tok_tik/config/helpers/human_format.dart';

import 'package:tok_tik/domain/entities/video_post.dart';

class VideoButtonsWidget extends StatelessWidget {
  final VideoPost videoPost;
  const VideoButtonsWidget({required this.videoPost, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            value: videoPost.likes,
            iconData: Icons.favorite,
            color: Colors.red),
        _CustomIconButton(
          value: videoPost.likes,
          iconData: Icons.remove_red_eye_outlined,
        ),
        SpinPerfect(
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(
            value: 0,
            iconData: Icons.play_circle_outline,
          ),
        )
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;
  const _CustomIconButton({required this.value, required this.iconData, color})
      : color = color ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
              size: 30,
            )),
        if (value > 0) Text(HumanFormat.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}
