class TextAndRegexHelper {
  String stringOlustur(String key, var documents) {
    String textURLNotSub = documents.map((e) => e[key]).toString();
    String text = textURLNotSub.substring(1, textURLNotSub.length - 1);

    return text;
  }

  bool booleanOlustur(String key, var documents) {
    String textURLNotSub = documents.map((e) => e[key]).toString();
    String text = textURLNotSub.substring(1, textURLNotSub.length - 1);
    if (text.toLowerCase() == 'true') {
      return true;
    } else {
      return false;
    }
  }

  bool textContain(String str, substring) {
    return str.contains(substring);
  }

  bool textRegex(String str, List<String> fileType) {
    return fileType.any((element) => str.toLowerCase().contains(element));
  }

  bool isImage(String file) {
    var regList = ['jpg', 'jpeg', 'gif', 'png'];
    return regList.any((element) => file.toLowerCase().contains(element));
  }

  bool isVideo(String file) {
    var regList = ['mp4', 'm3u8', 'ts', '3gp', 'avi'];
    return regList.any((element) => file.toLowerCase().contains(element));
  }

  bool isPDF(String file) {
    var regList = ['pdf'];
    return regList.any((element) => file.toLowerCase().contains(element));
  }

  bool mailRegex(String mail) {
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(mail);
    return emailValid;
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
