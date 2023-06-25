import 'package:flutter/material.dart';

class MessagePlaceholder extends StatelessWidget {
  const MessagePlaceholder({    super.key  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      key: const ValueKey('MessagePlaceholder'),
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                    height: 13,
                    decoration: _shimmerDecoration(),
                    child: const Text(
                      "",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                      ),
                    )),
                const SizedBox(width: 6),
                Container(
                    decoration: _shimmerDecoration(),
                    width: 40,
                    height: 13,
                    child: const Text(
                      "",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black38,
                          fontSize: 13.0),
                    )),
              ],
            ),
            const SizedBox(height: 8),
            Container(
                width: double.infinity,
                decoration: _shimmerDecoration(),
                child: const Text(
                  "",
                  style: TextStyle(fontSize: 16.0),
                )),
          ],
        ));
  }

  BoxDecoration _shimmerDecoration() {
    return BoxDecoration(
        color: Colors.grey[200], borderRadius: BorderRadius.circular(10));
  }
}
