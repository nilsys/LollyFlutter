import 'package:json_annotation/json_annotation.dart';

part 'mdictionary.g.dart';

@JsonSerializable()
class MDictionaries {
  @JsonKey(name: 'records')
  List<MDictionary> lst;

  MDictionaries() {}

  factory MDictionaries.fromJson(Map<String, dynamic> json) =>
      _$MDictionariesFromJson(json);

  Map<String, dynamic> toJson() => _$MDictionariesToJson(this);
}

@JsonSerializable()
class MDictionary {
  @JsonKey(name: 'ID')
  var id = 0;
  @JsonKey(name: 'DICTID')
  var dictid = 0;
  @JsonKey(name: 'LANGIDFROM')
  var langidfrom = 0;
  @JsonKey(name: 'LANGNAMEFROM')
  var langnamefrom = "";
  @JsonKey(name: 'LANGIDTO')
  var langidto = 0;
  @JsonKey(name: 'LANGNAMETO')
  var langnameto = "";
  @JsonKey(name: 'SEQNUM')
  var seqnum = 0;
  @JsonKey(name: 'DICTTYPEID')
  var dicttypeid = 0;
  @JsonKey(name: 'DICTTYPENAME')
  var dicttypename = "";
  @JsonKey(name: 'NAME')
  var dictname = "";
  @JsonKey(name: 'URL')
  String url;
  @JsonKey(name: 'CHCONV')
  String chconv;
  @JsonKey(name: 'AUTOMATION')
  String automation;
  @JsonKey(name: 'TRANSFORM')
  String transform;
  @JsonKey(name: 'WAIT')
  var wait = 0;
  @JsonKey(name: 'TEMPLATE')
  String template;
  @JsonKey(name: 'TEMPLATE2')
  String template2;

  MDictionary() {}

  factory MDictionary.fromJson(Map<String, dynamic> json) =>
      _$MDictionaryFromJson(json);

  Map<String, dynamic> toJson() => _$MDictionaryToJson(this);

// String urlString(String word, List<MAutoCorrect> lstAutoCorrects) {
//     final word2 = chconv == "BASIC" ? autoCorrect(word, lstAutoCorrects, (o) => o.extended, (o) => o.basic) : word;
//     final wordUrl = url.replaceAll("{0}", URLEncoder.encode(word2, "UTF-8"));
//     print("urlString: " + wordUrl);
//     return wordUrl;
// }
//
// String htmlString(String html, String word, bool useTemplate2) {
//     final t = useTemplate2 && !template2.isNullOrEmpty() ? template2 : template
//     return extractTextFrom(html, transform!!, t) { text, t ->
//     t.replace( "{0}", word)
//         .replace("{1}", cssFolder)
//         .replace("{2}", text)
//     }
// }
}

const cssFolder = "https://zwvista.tk/lolly/css/";
