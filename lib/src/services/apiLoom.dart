import 'package:http/http.dart' as http;

class ApiLoom {
  Future<String?> videoGifUrl(String link) async {
    try {
      var url = Uri.parse(link);

      var response = await http.get(url);
      RegExp regExp = RegExp(r'"([^"]+\.gif)"');

      Iterable<RegExpMatch> matches = regExp.allMatches(response.body);

      for (var match in matches) {
        if (match.group(1)!.contains('full')) {
          return match.group(1)!;
        }
      }

      return response.body;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
