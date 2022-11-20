import 'dart:convert';

import 'package:http/http.dart' as http;

var link = "https://opentdb.com/api.php?amount=10";

getQuiz() async {
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    return data;
  }
}
