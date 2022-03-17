import 'package:relax/data_class/music_list_data_class.dart';

class MusicRepo {
  MusicDataClass initMusicDb() {
    try {
      MusicDataClass music = MusicDataClass.fromMap(jsonList);
      return music;
    } catch (e) {
      print(e);
      return MusicDataClass([]);
    }
  }
}
