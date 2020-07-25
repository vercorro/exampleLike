import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../post.dart';

@immutable
abstract class FullScreenState  extends Equatable {
  const FullScreenState();

  @override
  List<Object> get props => [];
}


class FullScreenLoaded extends FullScreenState {
  final List<Post> posts;
  final bool hasReachedMax;

  const FullScreenLoaded({
    this.posts,
    this.hasReachedMax,
  });

  FullScreenLoaded copyWith({
    List<Post> posts,
    bool hasReachedMax,
  }) {
    return FullScreenLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [posts, hasReachedMax];

  @override
  String toString() =>
      'FullScreenLoaded { posts: ${posts.length}, hasReachedMax: $hasReachedMax }';
}

class UninitializedFullScreen extends FullScreenState {
  final List<Post> post;


  UninitializedFullScreen({
    this.post
  });

  @override
  List<Object> get props => [post];
}

class Liked extends FullScreenState {


  @override
  List<Object> get props => [];
}
class LikeRemoved extends FullScreenState {


  @override
  List<Object> get props => [];
}
class Disliked extends FullScreenState {


  @override
  List<Object> get props => [];
}


class PostError extends FullScreenState {
  final List<Post> posts;

  PostError({
    this.posts
  });

  @override
  List<Object> get props => [posts];


}