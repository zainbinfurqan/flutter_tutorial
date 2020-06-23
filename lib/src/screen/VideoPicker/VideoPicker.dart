import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class VideoPicker extends StatefulWidget {
  @override
  _VideoPickerState createState() => _VideoPickerState();
}

class _VideoPickerState extends State<VideoPicker> {
  VideoPlayerController _controller;
  var image;

  void _openGallery() async {
    image = await ImagePicker.pickVideo(source: ImageSource.gallery);
    print(image);
    _controller = VideoPlayerController.file(image)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pick video')),
      body: Container(
          child: Column(
        children: <Widget>[
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              _openGallery();
            },
            child: Text(
              "open gallery",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Center(
            child: _controller.value.initialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
