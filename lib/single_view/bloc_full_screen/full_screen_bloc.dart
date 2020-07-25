
import 'package:flutter_bloc/flutter_bloc.dart';
import 'full_screen_event.dart';
import 'full_screen_state.dart';

class FullScreenBloc extends Bloc<FullScreenEvent, FullScreenState> {


  FullScreenBloc() : super(UninitializedFullScreen());

  @override
  Stream<FullScreenState> mapEventToState(FullScreenEvent event) async* {

    if(event is Like){


      yield Liked();
      return;
    }
    if(event is Dislike){


      yield Disliked();
      return;
    }
  }

  void like(String postId) {


  }





}