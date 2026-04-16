/// A sound that may be associated with a [UnicodeSoundEmoticon]
final class SoundAsset {
  /// The path to the MP3 file, if available
  final String? mp3;

  /// The path to the OGG file
  final String ogg;

  const SoundAsset({required this.ogg, this.mp3});
}

class UnicodeSoundEmojiData {
  final String unicode;
  final String shortcode;

  /// Optional sound asset associated with this emoji
  final SoundAsset? sound;

  const UnicodeSoundEmojiData(
      {required this.unicode, required this.shortcode, this.sound});
}
