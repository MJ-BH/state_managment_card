import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Hello World %s',
          'next': 'NEXT',
          'back': 'BACK',
          'valide': 'Validate Email',
          'correct': 'Email Correct',
          'formatgood': 'Good Email Format',
          'incorrect': 'Email incorrect',
          'formatbad': 'Bad Email Format',
          'change': 'change'
        },
        'fr': {
          'title': 'Main Page %s',
          'next': 'SUIVANT',
          'back': 'RETOUR',
          'valide': 'valider Email ',
          'correct': 'Email Correct',
          'formatgood': 'Bon Email Format',
          'incorrect': 'Email incorrect',
          'formatbad': 'Mauvais Email Format',
          'change': 'Changer'
        },
        'ar': {
          'title': 'Main Page ARABE %s',
          'next': 'التالى',
          'back': 'قبل',
          'valide': 'التحقق من صحة البريد الإلكتروني ',
          'correct': ' البريد الإلكتروني الصحيح',
          'formatgood': ' تنسيق البريد الإلكتروني الصحيح',
          'incorrect': ' البريد الإلكتروني غير صحيح',
          'formatbad': 'تنسيق بريد إلكتروني خاطئ',
          'change': 'تغير',
        }
      };
}
