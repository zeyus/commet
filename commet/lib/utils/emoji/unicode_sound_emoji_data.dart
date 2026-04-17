import 'package:commet/utils/emoji/unicode_emoji_data.dart';
import 'package:commet/utils/sound/sound_asset.dart';

class UnicodeSoundEmojiData extends UnicodeEmojiData {
  /// Optional sound asset associated with this emoji
  final SoundAsset? sound;

  const UnicodeSoundEmojiData({required super.unicode, this.sound})
      : super(shortcode: "");
}
