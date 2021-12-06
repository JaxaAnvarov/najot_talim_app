import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BasicOverlayWidget extends StatelessWidget {
  final VideoPlayerController videoController;

  const BasicOverlayWidget({
    Key? key,
    required this.videoController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () =>
            videoController.value.isPlaying ? videoController.pause() : videoController.play(),
        child: Stack(
          children: <Widget>[
            buildPlay(),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: buildIndicator(),
            ),
          ],
        ),
      );

  Widget buildIndicator() => VideoProgressIndicator(
        videoController,
        allowScrubbing: true,
      );

  Widget buildPlay() => videoController.value.isPlaying
      ? Container()
      : Container(
          alignment: Alignment.center,
          color: Colors.black26,
          child: Icon(Icons.play_arrow, color: Colors.white, size: 80),
        );
}