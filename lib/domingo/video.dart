import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {

  late VideoPlayerController _videocrl;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _videocrl = VideoPlayerController.network(
      'https://youtu.be/_7Y5rx7ExjQ');
      _initializeVideoPlayerFuture = _videocrl.initialize();//forward
      _videocrl.setLooping(true);
    super.initState();
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _videocrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _videocrl.value.aspectRatio,
                child: VideoPlayer(_videocrl),
              );
            } else {
              return Center(child: CircularProgressIndicator(),);
            }
          }
          ),

        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            if(_videocrl.value.isPlaying){
              _videocrl.pause();
            }else{
              _videocrl.play();
            }
          }),
          child: Icon(_videocrl.value.isPlaying ? Icons.pause : Icons.play_arrow),
        ),
  
    );
  }
}
 