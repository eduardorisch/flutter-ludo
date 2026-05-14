import 'package:ludoboardgames/model/boardgame.dart';
import 'package:ludoboardgames/model/game_publisher.dart';
import 'package:ludoboardgames/repository/game_publisher_repository.dart';

List<Boardgame> getAllBoardGames(){
  return[
    Boardgame(title: "Azul", gamePublisher: [asmodee]),
    Boardgame(title: "Ticket to Ride", gamePublisher: [asmodee]),
    Boardgame(title: "Quem foi?", gamePublisher: [paperGames])
  ];
}

List<Boardgame> getBoardGamesBy(GamePublisher gamePublisher){
  return getAllBoardGames().where((boardGame)=>boardGame.gamePublisher.contains(gamePublisher)).toList();
}