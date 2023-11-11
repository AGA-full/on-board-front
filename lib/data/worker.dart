import 'onbording.dart';

class Worker {
  final String workerId;
  final String workerName;

  Worker({required this.workerId, required this.workerName});
}

class Recommender {
  final RecommenderType recommenderType;
  final Worker? worker;

  Recommender({required this.recommenderType, this.worker});
}