import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:rangoli/imageFile.dart';

class ImageDisplay extends StatelessWidget {
  ImageDisplay({required this.list, required this.index});
  final List list;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Container(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
          margin: EdgeInsets.only(left: 15, right: 15),
          child: InkWell(
              child: PhotoView(
                imageProvider: AssetImage(list[index]),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2,
                backgroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(250)),
                  color: Colors.teal[500],
                ),
                enableRotation: true,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ImageFile(
                            list: list,
                          )))),
        ),
      ),
    );
  }
}
