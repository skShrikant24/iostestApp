// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';

class YouTubePlayerWidget extends StatefulWidget {
  const YouTubePlayerWidget({
    super.key,
    this.width,
    this.height,
    required this.videoUrl,
  });

  final double? width;
  final double? height;
  final String videoUrl;

  @override
  State<YouTubePlayerWidget> createState() => _YouTubePlayerWidgetState();
}

class _YouTubePlayerWidgetState extends State<YouTubePlayerWidget> {
  late YoutubePlayerController _controller;
  late String videoId;
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.videoUrl) ?? '';
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        showLiveFullscreenButton: true,
      ),
    );

    _controller.addListener(_listener);
  }

  void _listener() {
    if (_controller.value.isFullScreen && !_isFullScreen) {
      _navigateToFullScreenPlayer(context);
    } else if (!_controller.value.isFullScreen && _isFullScreen) {
      setState(() {
        _isFullScreen = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 200.0,
      child: videoId.isNotEmpty
          ? YoutubePlayerBuilder(
              player: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.red,
                onReady: () {
                  // Ready to play
                },
              ),
              builder: (context, player) {
                return player;
              },
            )
          : Center(
              child: const Text(
                'Invalid video URL',
                style: TextStyle(color: Colors.red),
              ),
            ),
    );
  }

  void _navigateToFullScreenPlayer(BuildContext context) async {
    setState(() {
      _isFullScreen = true;
    });

    // Navigate to the fullscreen player
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          body: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.red,
          ),
        ),
      ),
    );

    // When returning from fullscreen, reset UI mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    setState(() {
      _isFullScreen = false;
    });
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }
}
