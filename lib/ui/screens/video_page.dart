import 'package:flutter/material.dart';
import 'package:najot_talim_app/ui/models/helper/video_player/video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

import '../../size_config.dart';

class VideoListPage extends StatefulWidget {
  // late VideoPlayerController videoPlayerController;
  // ChewieController? chewieController;
  VideoListPage({required this.course_name});
  String? course_name;

  @override
  State<VideoListPage> createState() => _VideoListPageState();
}

class _VideoListPageState extends State<VideoListPage> {
  late VideoPlayerController videoController;
  final asset = "assets/videos/abu.mp4";
  // final network = "https://www.youtube.com/watch?v=0AcvHuGeOZE";
  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => videoController.play());
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = videoController.value.volume == 0;
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _videoSection(),
            _infoSection(),
            if (videoController != null && videoController.value.isInitialized)
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red,
                child: IconButton(
                  icon: Icon(
                    isMuted ? Icons.volume_mute : Icons.volume_up,
                    color: Colors.white,
                  ),
                  onPressed: () => videoController.setVolume(isMuted ? 1 : 0),
                ),
              )
          ],
        ),
      ),
    );
  }

  Padding _infoSection() {
    return Padding(
      padding: EdgeInsets.all(
        getProportionateScreenWidth(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(),
          SizedBox(
            height: getProportionateScreenWidth(4.0),
          ),
          _subtitle(),
          SizedBox(
            height: getProportionateScreenWidth(20.0),
          ),
          _moreInfo(),
          SizedBox(
            height: getProportionateScreenWidth(20.0),
          ),
          _author(),
        ],
      ),
    );
  }

  Text _author() {
    return Text(
      "@abbos_khazratov",
      style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w400,
        fontSize: getProportionateScreenWidth(14.0),
      ),
    );
  }

  Text _moreInfo() {
    return Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w400,
        fontSize: getProportionateScreenWidth(14.0),
      ),
    );
  }

  Text _subtitle() {
    return Text(
      "Bu darsda biz siz bilan figma dasturida web sayt" +
          "uchun dizayn qilishni sinab ko`ramiz.",
      style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w400,
        fontSize: getProportionateScreenWidth(14.0),
      ),
    );
  }

  Text _title() {
    return Text(
      widget.course_name!,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: getProportionateScreenWidth(16.0),
      ),
    );
  }

  SizedBox _videoSection() {
    return SizedBox(
      height: getProportionateScreenWidth(211.0),
      width: getProportionateScreenWidth(375.0),
      child: VideoPlayerWidget(videoController: videoController),
    );
  }
}