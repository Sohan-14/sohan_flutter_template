import 'package:sohan_flutter_template/data/models/sample_dto.dart';
import 'package:sohan_flutter_template/domain/entities/sample.dart';

class SampleMapper {
  SampleMapper._();

  static Sample toEntity(SampleDto model) {
    return Sample(
      id: model.id,
      name: model.name,
      email: model.email,
    );
  }

  static List<Sample> toEntityList(List<SampleDto> models) {
    return models.map((model) => Sample(
          id: model.id,
          name: model.name,
          email: model.email,
    )).toList();
  }

  static SampleDto toModel(Sample entity) {
    return SampleDto(
      id: entity.id,
      name: entity.name,
      email: entity.email,
    );
  }
  
  
}
