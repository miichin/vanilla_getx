import 'package:vanilla_getx/app/translations/en_US/en_us_translation.dart';
import 'package:vanilla_getx/app/translations/es_MX/es_mx_translation.dart';
import 'package:vanilla_getx/app/translations/pt_BR/pt_br_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {'pt_BR': ptBR, 'en_US': enUs, 'es_mx': esMx};
}
