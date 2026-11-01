class YoutubeResponse {
  const YoutubeResponse({
    required this.youtubes,
    required this.error,
    required this.errorMessage,
  });

  factory YoutubeResponse.fromJson(Map<String, dynamic> json) {
    return YoutubeResponse(
      youtubes: (json['youtubes'] as List<dynamic>? ?? [])
          .map((item) => Youtube.fromJson(item as Map<String, dynamic>))
          .toList(),
      error: json['error'] as bool? ?? false,
      errorMessage: json['error_msg'] as String? ?? '',
    );
  }

  final List<Youtube> youtubes;
  final bool error;
  final String errorMessage;
}

class Youtube {
  const Youtube({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.avatarImage,
    required this.youtubeImage,
  });

  factory Youtube.fromJson(Map<String, dynamic> json) {
    return Youtube(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      avatarImage: json['avatar_image'] as String? ?? '',
      youtubeImage: json['youtube_image'] as String? ?? '',
    );
  }

  final String id;
  final String title;
  final String subtitle;
  final String avatarImage;
  final String youtubeImage;
}
