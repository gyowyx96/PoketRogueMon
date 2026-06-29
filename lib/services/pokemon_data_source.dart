import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:poketroguemon/domain/pokemon/models/pokemon_model.dart';

class PokemonDataSource {
  final Random _random;

  List<PokemonModel>? _cache;

  PokemonDataSource({int? seed}) : _random = Random(seed);

  Future<List<PokemonModel>> _loadAll() async {
    if (_cache != null) return _cache!;

    final jsonString =
        await rootBundle.loadString('assets/data/pokemon.json');

    final decoded = jsonDecode(jsonString) as List;

    _cache = decoded
        .map((e) => PokemonModel.fromJson(e))
        .toList();

    return _cache!;
  }

  Future<PokemonModel> getRandomPokemon() async {
    final list = await _loadAll();

    if (list.isEmpty) {
      throw Exception("Pokemon list is empty");
    }

    return list[_random.nextInt(list.length)];
  }
}