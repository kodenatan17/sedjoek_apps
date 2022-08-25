class EventModel {
  int? id;
  String? title;
  String? content;
  String? url;
  String? createdBy;
  String? urlImages;

  EventModel({
    required this.id,
    required this.title,
    required this.content,
    required this.url,
    required this.createdBy,
    required this.urlImages,
  });

  EventModel.fromJsonn(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    url = json['url'];
    createdBy = json['created_by'];
    urlImages = json['urlImages'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'url': url,
      'created_by': createdBy,
      'urlImages': urlImages,
    };
  }
}
