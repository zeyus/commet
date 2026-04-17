/// A sound that may be associated with emoji for calls
final class SoundAsset {
  /// The path to the MP3 file, if available
  final String? mp3;

  /// The path to the OGG file
  final String ogg;

  const SoundAsset({required this.ogg, this.mp3});
}
