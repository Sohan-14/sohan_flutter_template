import 'package:sohan_flutter_template/data/datasources/remote/remote_data_source.dart';
import 'package:sohan_flutter_template/domain/repositories/sample_repository.dart';

class SampleRepositoryImpl implements SampleRepository{
  final RemoteDataSource _remoteDataSource;
  SampleRepositoryImpl(this._remoteDataSource);

  @override
  Future<String> getSampleData() async {
   final String sampleData = await _remoteDataSource.fetchSampleData();
   return sampleData;
  }

}