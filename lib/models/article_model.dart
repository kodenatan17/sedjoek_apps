class ArticleModel {
  int? id;
  String? title;
  String? content;
  String? createdBy;
  String? type;

  ArticleModel({
    required this.id,
    required this.title,
    required this.content,
    required this.createdBy,
    required this.type,
  });

  ArticleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    createdBy = json['created_by'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'created_by': createdBy,
      'type': type,
    };
  }
}
