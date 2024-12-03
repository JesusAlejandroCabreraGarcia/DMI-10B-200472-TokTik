import 'package:flutter/material.dart';
import 'package:toktik_200472/config/helpers/human_formats.dart';
import 'package:toktik_200472/domains/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomButtons(value: video.likes, iconColor: Colors.red, iconData: Icons.favorite,),
        _CustomButtons(value: video.views, iconData: Icons.remove_red_eye_outlined),
      ],
    );
  }
}

class _CustomButtons extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomButtons({
    required this.value,
    required this.iconData,
    iconColor
  }):color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      IconButton(
        onPressed: () {},
         icon: Icon(iconData, color: color, size: 30)),
        Text(HumanFormats.humanReadBleNumber(value.toDouble())),
    ]);
  }
}
