//ADD PUBSPEC.YAML: mask_text_input_formatter: ^2.0.0
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextMasksHelper {
  var phoneMask = MaskTextInputFormatter(
      mask: '+90 (###) ###-##-##', filter: {"#": RegExp(r'[0-9]')});

  var hesFormatter = MaskTextInputFormatter(
      mask: '####-####-##', filter: {"#": RegExp(r'[a-zA-Z0-9]')});

  var dateYYFormatter = MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
}
