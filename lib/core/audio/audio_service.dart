import 'package:audioplayers/audioplayers.dart';

class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;

  AudioService._internal();

  final AudioPlayer _player = AudioPlayer();
  bool _started = false;

  Future<void> start() async {
    if (_started) return;

    await _player.setReleaseMode(ReleaseMode.loop);
    await _player.setVolume(1.0);
    await _player.play(
      AssetSource('audio/romantic.mp3'),
    );

    _started = true;
  }

  Future<void> stop() async {
    await _player.stop();
    _started = false;
  }
}
