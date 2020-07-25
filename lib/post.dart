// Copyright 2019 Joshua de Guzman (https://jmdg.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable/equatable.dart';


class Post extends Equatable {
  String id;
  String title;
  String content;
  String type;
  String timestamp;
  String username;
  String avatar;
  String userId;
  String vote;
  String thumbnail;
  String url;
  String upVotes;
  String downVotes;
  String nbComments;
  String tag1;
  String tag2;
  String tag3;


  Post(Map<String, dynamic> data) {
    this.id = data['id'];
    this.title = data['title'];
    this.content = data['content'];
    this.type = data['type'];
    this.timestamp = data['timestamp'];
    this.username=data['username'];
   // this.avatar=data['avatar'];
    this.userId=data['userId'];
    this.vote=data['vote'];
    this.thumbnail=data['thumbnail'];
    this.url=data['url'];
    this.upVotes=data['upVotes'];
    this.downVotes=data['downVotes'];
    this.nbComments=data['nbComments'];
    this.tag1=data['tag1'];
    this.tag2=data['tag2'];
    this.tag3=data['tag3'];
    this.avatar=data['avatar'];


  }

  @override
  List<Object> get props => [id, title, content,userId];

  @override
  String toString() {
    return 'Post{id: $id, title: $title, content: $content, type: $type, timestamp: $timestamp, username: $username, avatar: $avatar, userId: $userId, vote: $vote, thumbnail: $thumbnail, url: $url, upVotes: $upVotes, downVotes: $downVotes, nbComments: $nbComments, tag1: $tag1, tag2: $tag2, tag3: $tag3}';
  }
}
