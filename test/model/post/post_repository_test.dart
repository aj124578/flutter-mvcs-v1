

import 'package:flutter_riverpod_blog_start/dto/response_dto.dart';
import 'package:flutter_riverpod_blog_start/dto/user_request.dart';
import 'package:flutter_riverpod_blog_start/model/post/post.dart';
import 'package:flutter_riverpod_blog_start/model/post/post_repository.dart';
import 'package:flutter_riverpod_blog_start/model/user/user_repository.dart';

void main() async {
  await fetchPostList_test();
}

// Future<void> fetchPostList_test() async{
//   String jwt = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjb3PthqDtgbAiLCJpZCI6MSwiZXhwIjoxNjgyNjQ4NDM3fQ._urpwTwdimXjgoOCjqb9_FBAGTJf6eWFX2u87nFunNHpgdePfoc5csX0XLt_uqpBKRAjOyDI_vt0dHWg-8j4Bw";
//   ResponseDTO responseDTO = await PostRepository().fetchPostList(jwt);
//   print(responseDTO.code);
//   print(responseDTO.msg);
// }

Future<void> fetchPostList_test() async{
  String jwt = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjb3PthqDtgbAiLCJpZCI6MSwiZXhwIjoxNjgyNjQ4NDM3fQ._urpwTwdimXjgoOCjqb9_FBAGTJf6eWFX2u87nFunNHpgdePfoc5csX0XLt_uqpBKRAjOyDI_vt0dHWg-8j4Bw";
  ResponseDTO responseDTO = await PostRepository().fetchPostList(jwt);
  print(responseDTO.code);
  print(responseDTO.msg);
  List<Post> postList = responseDTO.data;
  postList.forEach((element) {
    print(element.title);
  });
}

