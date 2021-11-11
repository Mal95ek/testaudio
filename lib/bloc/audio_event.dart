part of 'audio_bloc.dart';

@immutable
// ignore: must_be_immutable
abstract class AudioEvent extends Equatable {
  String audoString = "";
}

// ignore: must_be_immutable
class Play extends AudioEvent {
  final String dataString;

  Play(this.dataString);

  @override
  List<Object> get props => [dataString];
}

// ignore: must_be_immutable
class Stopplayer extends AudioEvent {
  @override
  List<Object> get props => throw UnimplementedError();
}

// ignore: must_be_immutable
class Pause extends AudioEvent {
  @override
  List<Object> get props => throw UnimplementedError();
}
