import 'package:sohan_flutter_template/domain/entities/sample.dart';
import 'package:sohan_flutter_template/domain/repositories/sample_repository.dart';

class GetSampleDataUseCase {
  final SampleRepository _sampleRepository;
  GetSampleDataUseCase(this._sampleRepository);

  Future<List<Sample>> execute() async {
    return await _sampleRepository.getSampleData();
  }
}
