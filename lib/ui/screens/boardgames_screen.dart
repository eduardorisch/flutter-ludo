import 'package:flutter/material.dart';

import '../components/ludo_top_app_bar.dart';

class BoardGamesScreen extends StatelessWidget {
  const BoardGamesScreen({super.key});

  @override
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
      body: Padding(padding: const EdgeInsets.fromLTRB(16,0,16,0),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [

          ],
        ),
      ),),
    );
  }
}
