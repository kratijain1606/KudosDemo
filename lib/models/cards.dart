import 'dart:core';

class Cardd {
  int pics;
  int followers;
  int comments;
  int likes;

  Cardd({this.pics, this.followers, this.comments, this.likes});
}

List<Cardd> CardData = [
  Cardd(
    pics: 30,
    followers: 2000,
    comments: 1000,
    likes: 3000,
  ),
  Cardd(
    pics: 100,
    followers: 2000,
    comments: 1000,
    likes: 3000,
  )
];
