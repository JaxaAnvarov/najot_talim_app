import 'package:flutter/material.dart';
import 'package:najot_talim_app/ui/models/helper/video_player/basic_player.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController videoController;


  const VideoPlayerWidget({
    Key? key,
    required this.videoController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      videoController != null && videoController.value.isInitialized
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : Container(
              height: 200,
              child: Center(child: CircularProgressIndicator()),
            );

  Widget buildVideo() => Stack(
        children: <Widget>[
          buildVideoPlayer(),
          Positioned.fill(child: BasicOverlayWidget(videoController: videoController)),
        ],
      );

  Widget buildVideoPlayer() => AspectRatio(
        aspectRatio: videoController.value.aspectRatio,
        child: VideoPlayer(videoController),
      );
}