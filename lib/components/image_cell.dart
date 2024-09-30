import 'package:flutter/material.dart';

class ImageCell extends StatelessWidget {
  final String imgPath;
  final String? userName;

  const ImageCell({super.key, required this.imgPath, this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularImage(imgPath: imgPath),
            const SizedBox(width: 10),
            UserName(userName: userName),
          ],
        ),
      ),
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({
    super.key,
    required this.userName,
  });

  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Text(
      userName ?? '',
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
        letterSpacing: 1.0,
      ),
    );
  }
}

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.imgPath,
  });

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.red, width: 5),
      ),
      child: ClipOval(
        child: Image.asset(
          imgPath,
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
