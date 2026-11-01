import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_demo_0/src/models/youtube_response.dart';

class WebApiService {
  Future<YoutubeResponse> feed() async {
    final dio = Dio();
    final result = await dio.get(
      'https://codemobiles.com/adhoc/youtubes/index_new.php',
      queryParameters: {
        'username': 'admin',
        'password': 'password',
        'type': 'songs',
      },
    );

    final data = result.data;
    if (data is! Map<String, dynamic>) {
      throw const FormatException('Unexpected feed response format');
    }

    final youtubeResponse = YoutubeResponse.fromJson(data);
    debugPrint('Loaded ${youtubeResponse.youtubes.length} videos');
    return youtubeResponse;
  }
}
