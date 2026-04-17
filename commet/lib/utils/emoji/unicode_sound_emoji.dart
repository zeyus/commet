import 'package:commet/client/components/emoticon/emoticon.dart';
import 'package:commet/utils/emoji/unicode_emoji.dart';
import 'package:commet/utils/emoji/unicode_sound_emoji_data.dart';
import 'package:commet/utils/sound/sound_asset.dart';

class UnicodeEmojis {
  static List<UnicodeEmoticonPack>? packs;
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

class UnicodeSoundEmoticon extends UnicodeEmoticon {
  /// Optional sound asset associated with this emoji
  final SoundAsset? sound;

  /// Whether this emoji has an associated sound
  /// If not, it can still be used for call reactions
  bool get hasSound => sound != null;

  /// Whether this emoji has an associated MP3 file
  bool get hasMp3 => sound?.mp3 != null;

  /// Whether this emoji has an associated OGG file
  /// If [hasSound] is true, this is guaranteed to be true
  /// as OGG is required for all sound emoji
  bool get hasOgg => sound?.ogg != null;

  UnicodeSoundEmoticon(super.text, {this.sound, super.shortcode});
}
