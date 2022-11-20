import 'package:flutter/material.dart';

import '../shared/app_drawer.dart';

class IntroduceScreen extends StatelessWidget {
  static const routeName = '/introduce';
	const IntroduceScreen({super.key});

	@override
	Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giới Thiệu Cửa Hàng'),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          children: const <Widget>[
            Padding(padding: EdgeInsets.all(5.0)),
            Image(image: AssetImage('assets/images/sach.jpg'), height: 200,),
            Text('\n\t\t\t\t\tSách không chỉ là nguồn tri thức vô tận đối với mỗi người mà ngày càng có nhiều minh chứng khoa học cho thấy những tác động rất tốt của việc đọc sách đối với sự phát triển cả về thể chất lẫn trí tuệ và tâm hồn của trẻ. Để thúc đẩy phong trào đọc sách trong giới trẻ đặc biệt là việc hình thành thói quen đọc sách từ những lứa tuổi nhỏ. Những quyển sách trong cửa hàng sách sẽ giúp cho các bạn đọc giả có cách nhìn xa hơn về cuộc sống. Kinh nghiệm cuộc sống, cách ứng xử, giao tiếp và những câu truyện cười giúp cho tinh thần được lạc quan thoải mái.\n\n\n', style: TextStyle(fontSize: 18), textAlign: TextAlign.justify),
            Text('Thông tin liên hệ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.red)),
            Text('Facebook: MyBookStore', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18)),
            Text('Email: mybookstore@gmail.com', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
