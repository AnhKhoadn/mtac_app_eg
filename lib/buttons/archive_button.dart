import 'package:flutter/material.dart';

class ArchiveButton extends StatelessWidget {
  const ArchiveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: OutlinedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, "/archive_page");
          },
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 90),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              side: const BorderSide(color: Color(0xFF1565C0))),
          icon: const Icon(
            Icons.cloud_upload_outlined,
            color: Color(0xFF1565C0),
            size: 35,
          ),
          label: const Text(
            'Kho Lưu trữ',
            style: TextStyle(color: Color(0xFF1565C0), fontSize: 20),
          ),
        ),
      ),
    );
  }
}
