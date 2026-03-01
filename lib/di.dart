import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:health_app/core/services/storage.dart';
import 'package:health_app/shared/api/api_repositories.dart';

final di = GetIt.instance;

AppStorage get appStorage => di<AppStorage>();
AppRepositories get appRepo => di<AppRepositories>();
Dio get getDio => di<AppRepositories>().getDio();
