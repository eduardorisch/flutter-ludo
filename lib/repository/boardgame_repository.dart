import 'package:ludoboardgames/model/boardgame.dart';
import 'package:ludoboardgames/repository/game_publisher_repository.dart';

List<Boardgame> getBoardGames(){
  return[
    Boardgame(title: "Azul", gamePublisher: [asmodee]),
    Boardgame(title: "Ticket to Ride", gamePublisher: [asmodee]),
    Boardgame(title: "Quem foi?", gamePublisher: [paperGames])
  ];
}