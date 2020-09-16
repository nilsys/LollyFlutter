import 'package:lolly_flutter/models/misc/mtextbook.dart';
import 'package:lolly_flutter/models/wpp/mlangphrase.dart';
import 'package:lolly_flutter/models/wpp/munitphrase.dart';

import '../misc/baseservice.dart';

class LangPhraseService extends BaseService {
  Future<List<MLangPhrase>> getDataByLang(int langid) async =>
      MLangPhrases.fromJson(await getDataByUrl(
              "LANGPHRASES?filter=LANGID,eq,${langid}&order=PHRASE"))
          .lst;

  Future<int> create(MLangPhrase item) async =>
      await createByUrl("LANGPHRASES", item.toJson());

  Future updateTranslation(int id, String translation) async =>
      print(await updateByUrl("LANGPHRASES/${id}", "TRANSLATION=${translation}"));

  Future update(MLangPhrase item) async =>
      print(await callSPByUrl("LANGPHRASES/${item.id}", item.toJson()));

  Future delete(MLangPhrase item) async =>
      print(await callSPByUrl("LANGPHRASES_DELETE", item.toJson()));
}