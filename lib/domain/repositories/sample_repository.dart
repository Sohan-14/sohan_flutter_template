import 'package:sohan_flutter_template/domain/entities/sample.dart';

abstract class SampleRepository{
  Future<List<Sample>> getSampleData();
}