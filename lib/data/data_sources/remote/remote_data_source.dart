import 'package:sohan_flutter_template/domain/entities/sample.dart';

abstract class RemoteDataSource {
  Future<List<Sample>> fetchSampleData();
}
