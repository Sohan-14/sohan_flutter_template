import 'package:sohan_flutter_template/core/config/app_api_endpoints.dart';
import 'package:sohan_flutter_template/core/enums/http_method.dart';
import 'package:sohan_flutter_template/core/network/network_service.dart';
import 'package:sohan_flutter_template/data/data_sources/remote/remote_data_source.dart';
import 'package:sohan_flutter_template/data/mapper/sample_mapper.dart';
import 'package:sohan_flutter_template/data/models/sample_dto.dart';
import 'package:sohan_flutter_template/domain/entities/sample.dart';

class RemoteDataSourceImpl implements RemoteDataSource{
  final NetworkService _networkService;

  RemoteDataSourceImpl(this._networkService);

  @override
  Future<List<Sample>> fetchSampleData() async {
    final sample = await _networkService.handleListRequest<SampleDto>(
      httpMethod: HttpMethod.GET,
      endpoint: AppApiEndpoints.getAllUser,
      fromJson: (json) => SampleDto.fromJson(json),
      // fromJson: (json) => SampleDto.fromJson(json),
    );
    return SampleMapper.toEntityList(sample);
  }
}

