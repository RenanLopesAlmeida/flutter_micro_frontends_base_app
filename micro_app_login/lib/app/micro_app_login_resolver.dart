import 'package:micro_app_login/app/page/login_page.dart';
import 'package:micro_core/apps/micro_app.dart';
import 'package:micro_core/apps/micro_core_utils.dart';

class MicroAppLoginResolver implements MicroApp {
  @override
  String get microAppName => 'micro_app_login';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/login': (context, args) => const LoginPage(),
      };
}
