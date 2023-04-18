
// 창고 관리자
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../model/post/post.dart';

final PostHomePageProvider = StateNotifierProvider<PostHomePageViewModel, PostHomePageModel? >((ref) {
  return PostHomePageViewModel(null);
});


// 창고 데이터
class PostHomePageModel{
  List<Post> posts;
  PostHomePageModel({required this.posts});
}

// 창고
class PostHomePageViewModel extends StateNotifier<PostHomePageModel?>{
  PostHomePageViewModel(super.state);
}