import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/home_page');
            },
            icon: const Icon(CupertinoIcons.xmark),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
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
                  'Đăng ký',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Số điện thoại',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)
                        )
                    )
                ),
                const SizedBox(height: 30),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Mật khẩu',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 15)
                        )
                    )
                ),
                const SizedBox(height: 30),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Xác nhận mật khẩu',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 15)
                        )
                    )
                ),
                const SizedBox(height: 30),
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
                        'Đăng ký',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Đã có tài khoản?  ', style: TextStyle(color: Colors.black, fontSize: 20),),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/login_page');
                      },
                      child: const Text(
                        'Đăng nhập',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),),
                    )
                  ],
                ),
                const SizedBox(height: 30),
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
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: (){},
                  child: SizedBox(height: 70, width: 70, child: Image.asset('lib/images/google_icon.png')))
              ],
            ),
          ),
        ));
  }
}
