import 'package:flutter/material.dart';

class WrongPinDialog extends StatelessWidget {
  const WrongPinDialog();

  @override
  Widget build(BuildContext context) => AlertDialog(
        scrollable: true,
        title: const Text('Không có dữ liệu nào tồn tại với mã PIN này!'),
        content: const Padding(
            padding: EdgeInsets.all(8),
            child: Text('Bạn có muốn tạo cơ sở dữ liệu mới và xóa những cơ sở dữ liệu hiện có không?')),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Không, thử lại', style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Có, tạo mới', style: TextStyle(color: Colors.red)))
        ],
      );
}
