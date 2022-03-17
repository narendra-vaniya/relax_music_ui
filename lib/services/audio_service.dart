// import 'package:audio_service/audio_service.dart';
// import 'package:relax/services/audio_service_handler.dart';

// class AppAudioService {
//   static final AppAudioService _appAudioService = AppAudioService._internal();

//   AppAudioService._internal();
//   factory AppAudioService() {
//     return _appAudioService;
//   }
//   late AudioHandler _audioHandler;

//   AudioHandler get audioHandler => _audioHandler;
//   void initAudioService() async {
//     _audioHandler = await AudioService.init(
//       config: AudioServiceConfig(
//         androidNotificationChannelId: 'com.mycompany.myapp.channel.audio',
//         androidNotificationChannelName: 'Audio playback',
//         androidNotificationOngoing: true,
//       ),
//       builder: () => AppAudioServiceHandler(),
//     );
//   }

//   void play(MediaItem mediaItem) async {
//     await _audioHandler.playMediaItem(mediaItem);
//     await _audioHandler.play();
//   }
// }
