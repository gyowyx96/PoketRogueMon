import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:poketroguemon/domain/moves/models/move_model.dart';

class MoveDataSource {

  Future<List<MoveModel>> _loadAll() async {
    final jsonString =
        await rootBundle.loadString('assets/data/moves.json');

    final decoded = jsonDecode(jsonString) as List;

    return decoded
        .map((e) => MoveModel.fromJson(e))
        .toList();
  }


  Future<MoveModel> getMoveById(int id) async {
    final moves = await _loadAll();

    return moves.firstWhere(
      (move) => move.id == id,
      orElse: () => throw Exception("Move $id not found"),
    );
  }
}