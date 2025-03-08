

import 'package:project_structure/app_config/environment_config.dart';

import 'main_common.dart' as runner;

Future<void> main() async {
  Environment.appFlavor = Flavor.prod;
  await runner.main();
}
