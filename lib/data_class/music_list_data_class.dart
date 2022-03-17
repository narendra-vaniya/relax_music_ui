import 'dart:convert';

class MusicDataClass {
  List<MusicCategoryDataClass> musicCategouryList = [];

  MusicDataClass(this.musicCategouryList);
  factory MusicDataClass.fromMap(String data) {
    List<MusicCategoryDataClass> _tmp = List<MusicCategoryDataClass>.from(
      jsonDecode(data).map((e) => MusicCategoryDataClass.fromMap(e)),
    ).toList();
    return MusicDataClass(_tmp);
  }
}

class MusicCategoryDataClass {
  MusicCategoryDataClass({
    required this.title,
    required this.category,
    required this.image,
    required this.musics,
  });

  String title;
  String category;
  String image;
  List<MusicDetailsDataClass> musics;

  factory MusicCategoryDataClass.fromJson(String str) =>
      MusicCategoryDataClass.fromMap(json.decode(str));

  factory MusicCategoryDataClass.fromMap(Map<String, dynamic> json) =>
      MusicCategoryDataClass(
        title: json["title"],
        category: json["category"],
        image: json["image"],
        musics: List<MusicDetailsDataClass>.from(
          json["musics"].map((e) => MusicDetailsDataClass.fromMap(e)),
        ),
      );
}

class MusicDetailsDataClass {
  MusicDetailsDataClass({
    required this.title,
    required this.url,
  });

  String title;
  String url;

  factory MusicDetailsDataClass.fromJson(String str) =>
      MusicDetailsDataClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MusicDetailsDataClass.fromMap(Map<String, dynamic> json) =>
      MusicDetailsDataClass(
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "url": url,
      };
}

String jsonList = """
[
  {
    "title": "Relax",
    "category": "relax",
    "image": "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg",
    "musics": [
      {
         "title": "A Salute To Head-Scratching Science",
      "url": "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3"
      }
    ]
  },
  {
    "title": "Calm",
    "category": "calm",
    "image": "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg",
    "musics":  [
      {
         "title": "A Salute To Head-Scratching Science",
      "url": "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3"
      }
    ]
  }
]
""";
