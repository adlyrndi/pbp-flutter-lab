// To parse this JSON data, do
//
//     final mywatchlist = mywatchlistFromJson(jsonString);

import 'dart:convert';

List<Mywatchlist> mywatchlistFromJson(String str) => List<Mywatchlist>.from(json.decode(str).map((x) => Mywatchlist.fromJson(x)));

String mywatchlistToJson(List<Mywatchlist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mywatchlist {
    Mywatchlist({
        required this.model,
        required this.pk,
        required this.fields,
    });

    Model model;
    int pk;
    Fields fields;

    factory Mywatchlist.fromJson(Map<String, dynamic> json) => Mywatchlist(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.review,
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
    });

    String review;
    Watched watched;
    String title;
    String rating;
    String releaseDate;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        review: json["review"],
        watched: watchedValues.map[json["watched"]]!,
        title: json["title"],
        rating: json["rating"],
        releaseDate: json["release_date"],
    );

    Map<String, dynamic> toJson() => {
        "review": review,
        "watched": watchedValues.reverse[watched],
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
    };
}

enum Watched { YES, NO }

final watchedValues = EnumValues({
    "No": Watched.NO,
    "Yes": Watched.YES
});

enum Model { MYWATCHLIST_MYFAVORITEWATCHLIST }

final modelValues = EnumValues({
    "mywatchlist.myfavoritewatchlist": Model.MYWATCHLIST_MYFAVORITEWATCHLIST
});

class EnumValues<T> {
    late Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
