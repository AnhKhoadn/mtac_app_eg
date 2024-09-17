import 'package:flutter/material.dart';

class RecycleListView extends StatelessWidget {
  const RecycleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 200,
                  height: 140,
                  child: Image.asset('lib/images/recycle_1.png', fit: BoxFit.cover,),
                ),
              ),
              const Text('Trách nhiệm mở rộng của\n nhà sản xuất (EPR)')
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 200,
                  height: 140,
                  child: Image.asset('lib/images/recycle_2.png', fit: BoxFit.cover,),
                ),
              ),
              const Text('Vải lau công nghiệp')
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 200,
                  height: 140,
                  child: Image.asset('lib/images/recycle_3.png', fit: BoxFit.cover,),
                ),
              ),
              const Text('Tiền xử lý cấp nhiên liệu\n và đồng xử lý')
            ],
          ),
        ],
      ),
    );
  }
}
