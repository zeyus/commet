import 'package:commet/client/components/emoticon/emoticon.dart';
import 'package:commet/utils/emoji/unicode_emoji.dart';
import 'package:commet/utils/emoji/unicode_sound_emoji_data.dart';

class UnicodeSoundEmoticon extends UnicodeEmoticon {
  final SoundAsset sound;
  UnicodeSoundEmoticon(super.text, this.sound);

  static UnicodeSoundEmoticon promote(UnicodeEmoticon base) {
    if (base is UnicodeSoundEmoticon) {
      return base;
    } else {}
  }
}

class UnicodeSoundEmojticonPack extends UnicodeEmoticonPack {
  final SoundAsset sound;

  UnicodeSoundEmojticonPack(
      {required super.getLocalisedName,
      required super.dataPacks,
      required super.identifier,
      required this.sound,
      super.icon,
      super.image});

  @override
  List<Emoticon> get emoji => super
      .emoji
      .map((e) => UnicodeSoundEmoticon(e.text, sound: sound))
      .toList();
}

abstract interface class MatrixCallReaction {
  /// The reaction emoji and sound
  Emoticon get emoticon;
  String get emoji => emoticon.slug;
  String get name => emoticon.shortcode ?? emoticon.slug;
}
