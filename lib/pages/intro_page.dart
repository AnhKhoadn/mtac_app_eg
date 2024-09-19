import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 160,
                width: 160,
                child: Image.asset('lib/images/logo_nhan_dien_MTAC.png'),
              ),
            ),
            SizedBox(
                height: 350, width: 450, child: Image.asset('lib/images/intro_page_image.png')),
            const SizedBox(height: 20),
            const Text(
              'Chào mừng bạn đến với',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: 'MTAC ',
                    style: TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFF1565C0))),
                TextSpan(
                    text: 'PARTNER',
                    style: TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFFF44336))),
              ]),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 65),
              child: Text(
                'Chào mừng bạn đến với ứng dụng thu gom của chúng tôi, nơi bạn có thể theo dõi , ký hợp đồng và quản lý việc thu gom của mình một cách dễ dàng và hiệu quả ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 70,
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home_page');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1565C0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bắt đầu',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.double_arrow,
                        color: Colors.white,
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
