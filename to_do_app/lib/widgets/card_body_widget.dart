import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xffDFDFDF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tap the duc buoi sang',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff4B4B4B),
              ),
            ),
            Icon(
              Icons.delete,
              color: Color(0xff4B4B4B),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
