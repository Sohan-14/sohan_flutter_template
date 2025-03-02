import 'package:sohan_flutter_template/data/data_sources/remote/remote_data_source.dart';
import 'package:sohan_flutter_template/domain/entities/sample.dart';
import 'package:sohan_flutter_template/domain/repositories/sample_repository.dart';

class SampleRepositoryImpl implements SampleRepository{
  final RemoteDataSource _remoteDataSource;
  SampleRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<Sample>> getSampleData() async {
    return await _remoteDataSource.fetchSampleData();
  }
}