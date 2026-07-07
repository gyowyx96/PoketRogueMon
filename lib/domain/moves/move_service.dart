import 'package:poketroguemon/domain/moves/models/move_model.dart';
import 'package:poketroguemon/services/move_data_source.dart';

class MoveService {
  final MoveDataSource dataSource;

  MoveService(this.dataSource);

  Future<MoveModel> getMoveById(int id) {
    return dataSource.getMoveById(id);
  }

  Future<List<MoveModel>> getMovesByIds(List<int> ids) async {
    final result = <MoveModel>[];

    for (final id in ids) {
      result.add(await dataSource.getMoveById(id));
    }

    return result;
  }
}
