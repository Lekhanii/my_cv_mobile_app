import 'dart:convert';

List<TodoResponseModel> todoResponseModelFromJson(String str) =>
    List<TodoResponseModel>.from(
        json.decode(str).map((x) => TodoResponseModel.fromJson(x)));

class TodoResponseModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TodoResponseModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory TodoResponseModel.fromJson(Map<String, dynamic> json) =>
      TodoResponseModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  get body => null;
}
