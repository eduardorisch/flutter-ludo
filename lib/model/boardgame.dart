import 'package:ludoboardgames/model/game_publisher.dart';

class Boardgame {
  final String title;
  final List<GamePublisher> gamePublisher;

  const Boardgame({required this.title,
  required this.gamePublisher});
}