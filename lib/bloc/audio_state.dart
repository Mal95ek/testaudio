part of 'audio_bloc.dart';

@immutable
abstract class AudioState extends Equatable {
@override
   String audioStringData;

}

class AudioInitial extends AudioState {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

 void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}

class AudioLoaded extends AudioState {
  String audioStringData;
 AudioLoaded({@required this.audioStringData});

  @override
  List<Object> get props => [audioStringData];

}

class AudioError extends AudioState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}
