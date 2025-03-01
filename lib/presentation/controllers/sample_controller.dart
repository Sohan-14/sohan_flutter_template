import 'package:get/get.dart';
import 'package:sohan_flutter_template/domain/usecases/get_sample_data_usecases.dart';

class SampleController extends GetxController{
  final GetSampleDataUseCase _getSampleDataUseCase;
  SampleController(this._getSampleDataUseCase);

  final sampleData = "".obs;
  final isLoading = false.obs;
  final errorMessage = "".obs;

  void fetchSampleData () async {
    try{
      isLoading(true);
      sampleData.value = await _getSampleDataUseCase.execute();
    }
    catch (exception){
      errorMessage.value = exception.toString();
    }
    finally {
      isLoading(false);
    }
  }
}