import 'input_data.dart';
import 'output_data.dart';

abstract class UseCase<TInputData extends InputData<OutputData>,
    TOutputData extends OutputData> {
  Future<TOutputData> handle(TInputData inputData);
}
