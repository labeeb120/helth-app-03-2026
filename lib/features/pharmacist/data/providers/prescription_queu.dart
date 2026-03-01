import 'package:health_app/auth_state.dart';
import 'package:health_app/shared/api/api_repositories.dart';
import 'package:health_app/shared/ex.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../responses/queue_item.dart' show PrescriptionQueueItem;
part 'prescription_queu.g.dart';

PrescriptionQueueItem toModel(dynamic a) {
  return PrescriptionQueueItem.fromJson(a);
}

@riverpod
Future<List<PrescriptionQueueItem>> prescriptionQueue(Ref ref) async {
  try {
    await Future.delayed(Duration(seconds: 1));
    final a = await di<AppRepositories>().getDio().get(
      '/PharmacistDashboard/queue',
    );
    final listData = (a.data as Iterable).map(toModel).toList();
    return listData;
  } catch (e) {
    xlog(e);
    return [];
  }
}
