import 'package:flutter/material.dart';
import 'package:ludoboardgames/model/boardgame.dart';
import 'package:ludoboardgames/model/game_publisher.dart';
import 'package:ludoboardgames/repository/boardgame_repository.dart';
import 'package:ludoboardgames/repository/game_publisher_repository.dart';
import 'package:ludoboardgames/ui/components/boardgame_list_card.dart';
import 'package:ludoboardgames/ui/components/game_publisher_card.dart';

import '../components/ludo_top_app_bar.dart';

class BoardGamesScreen extends StatefulWidget {
  const BoardGamesScreen({super.key});

  @override
  State<BoardGamesScreen> createState() => _BoardGamesScreenState();
}

class _BoardGamesScreenState extends State<BoardGamesScreen> {
  late List<GamePublisher> gamesPublisherState;
  late List<Boardgame> boardGamesListState;

  @override
  void initState() {
    super.initState();
    gamesPublisherState = getAllGamesPublishers();
    boardGamesListState = getAllBoardGames();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LudoBGTopBar(
        actions: [
          IconButton(
            onPressed: () {
              // acao
            },
            icon: const Icon(Icons.notifications),
            tooltip: 'Notificaçoes',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 96,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: gamesPublisherState.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    final publisher = gamesPublisherState[index];
                    return GamePublisherCard(
                      gamePublisher: publisher,
                      onClick: (publisher) {
                        setState(() {
                          boardGamesListState = getBoardGamesBy(publisher);
                        });
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),

              Expanded(
                child: boardGamesListState.isEmpty
                    ? const Center(child: Text('Nenhum jogo encontrado'))
                    : ListView.builder(
                        itemCount: boardGamesListState.length,
                        itemBuilder: (context, index) {
                          final game = boardGamesListState[index];
                          return BoardgameCardList(boardgame: game);
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
