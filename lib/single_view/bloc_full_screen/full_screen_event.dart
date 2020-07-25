
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


abstract class FullScreenEvent extends Equatable {

  const FullScreenEvent();


  @override
  List<Object> get props => [];
}



class SubmittedFullScreen extends FullScreenEvent{
  @override
  String toString() => 'Submitted';

  @override
  List<Object> get props => [];


}

class Like extends FullScreenEvent{
//  String previousVote;
//  String postId;



  @override
  String toString() => 'Like';


}
class Dislike extends FullScreenEvent{
//  String previousVote;
//  String postId;



  @override
  String toString() => 'Like';


}


class RemoveLike extends FullScreenEvent{
  @override
  String toString() => 'RemoveLike';

  @override
  List<Object> get props => [];


}