class StringUtils {

  static bool isAlpha(String input) => RegExp(r'^[a-zA-Z]+$').hasMatch(input);

  static bool isAlphas(String input) => RegExp(r'[a-zA-Z]').hasMatch(input);

  static bool isAlphanumeric(String input) => RegExp(r'^[a-zA-Z0-9]+$').hasMatch(input);

  static bool nonContainNumber(String input) => RegExp(r'^\D+$').hasMatch(input);

  static bool isNullOrEmpty(String s) => (s == null || s.isEmpty) ? true : false;

  static bool isNotNullOrEmpty(String s) => !isNullOrEmpty(s);

  static bool isLowerCase(String s) => s == s.toLowerCase();

  static bool isUpperCase(String s) => s == s.toUpperCase();

  static String reverse(String s) => String.fromCharCodes(s.runes.toList().reversed);

  static String getFirstEnglishWord(String s) => RegExp(r'([a-zA-Z]+)').stringMatch(s);

  /// 找到第一個單字
  /// * 非中文
  /// * 開頭不為數字
  /// * 允許底線
  static String getFirstWord(String s) => RegExp(r'([a-zA-Z_]+[a-zA-Z_0-9]*)').stringMatch(s);

  static int countChars(String s, String char, {bool caseSensitive = true}) {
    int count = 0;
    s.codeUnits.toList().forEach((i) {
      if (caseSensitive) {
        if (i == char.runes.first) {
          count++;
        }
      } else {
        if (i == char.toLowerCase().runes.first ||
            i == char.toUpperCase().runes.first) {
          count++;
        }
      }
    });
    return count;
  }

// --- string.function 既有的
// 1. bool startsWith(Pattern pattern, [int index = 0]);
//    string.startsWith('D');
//    string.startsWith(RegExp(r'[A-Z][a-z]'));
//    string.startsWith(RegExp(r'art'), int startIndex);
}