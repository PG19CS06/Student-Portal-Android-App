// import 'package:delvento/services/local_storage_service.dart';
// import 'package:delvento/services/platform_service.dart';
import 'package:get_it/get_it.dart';
import 'package:student_portal_app/services/local_storage_service.dart';

GetIt locator = GetIt.instance;

Future setupLocator() async {
  final localStorageInstance = await LocalStorageService.getInstance();
  // final platformChannelInstance = await PlatformService.getInstance();
  locator.registerSingleton<LocalStorageService>(localStorageInstance!);
  // locator.registerSingleton<PlatformService>(platformChannelInstance);
}
