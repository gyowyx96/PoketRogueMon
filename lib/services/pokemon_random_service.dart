import 'package:poketroguemon/domain/pokemon/models/pokemon_instance.dart';
import 'package:poketroguemon/mapper/pokemon_mapper.dart';
import 'package:poketroguemon/services/pokemon_data_source.dart';

class PokemonRandomService {
  final PokemonDataSource _dataSource;

  PokemonRandomService(this._dataSource);

  Future<PokemonInstance> getRandomPokemon() async {
    final model = await _dataSource.getRandomPokemon();
    return model.toDomain();
  }
}