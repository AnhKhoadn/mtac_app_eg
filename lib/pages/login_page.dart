import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                    height: 160,
                    width: 160,
                    child: Image.asset('lib/images/logo_nhan_dien_MTAC.png')),
              ),
              const Text(
                'Đăng nhập',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'Số điện thoại',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'Mật khẩu',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 15)))),
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quên mật khẩu?',
                    style:
                        TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFF1565C0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Đăng nhập',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text.rich(TextSpan(
                  text: 'Chưa có tài khoản?  ',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Đăng ký',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    )
                  ])),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    ' Hoặc đăng nhập với ',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(height: 70, width: 70, child: Image.asset('lib/images/google_icon.png'))
            ],
          ),
        ));
  }
}
