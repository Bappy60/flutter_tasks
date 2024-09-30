import 'package:flutter/material.dart';
import 'package:flutter_tasks/components/image_cell.dart';

class GridViewImage extends StatelessWidget {
  final String imgPath = 'assets/images/bappy_profile.jpg';

  const GridViewImage({super.key});

  // Generates a list of CircularImage widgets
  List<CircularImage> _generateCircularImageArray(String imgPath) {
    List<CircularImage> circularImages = [];
    for (int i = 0; i < 100; i++) {
      circularImages.add(CircularImage(imgPath: imgPath));
    }
    return circularImages;
  }

  @override
  Widget build(BuildContext context) {
    // Initialize the list of CircularImage widgets
    final List<CircularImage> items = _generateCircularImageArray(imgPath);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of items per row
            crossAxisSpacing: 10, // Horizontal space between grid items
            mainAxisSpacing: 10, // Vertical space between grid items
          ),
          itemCount: items.length, // Number of items
          itemBuilder: (BuildContext context, int index) {
            return items[index]; // Display the CircularImage widget
          },
        ),
      ),
    );
  }
}
