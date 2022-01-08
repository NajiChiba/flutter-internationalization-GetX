import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appbar1': 'AppBar 1',
          'appbar2': 'Just Testing',
          'title1': 'This is just a test',
          'title2': 'This is translation of  Title 1',
          'subtitle1': 'This is translation of Subtitle 1',
          'button1': 'Navigate to test page',
          'button2': 'change language',
        },
        'ar_MA': {
          'appbar1': 'تطبيق للتجربة',
          'appbar2': 'هده فقط تجربة',
          'title1': 'هده فقط تجربة',
          'title2': 'عنوان 1',
          'subtitle1': 'تحت عنوان 1',
          'button1': 'زر 1',
          'button2': 'زر 2',
        },
      };
}
