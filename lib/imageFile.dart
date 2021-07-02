import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImageFile extends StatefulWidget {
  ImageFile({
    required this.list,
  });
  final List list;

  @override
  _ImageFileState createState() => _ImageFileState(
        list: list,
      );
}

class _ImageFileState extends State<ImageFile> {
  //static const String id = "IamgeFile";
  _ImageFileState({required this.list});
  final List list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Container(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
          margin: EdgeInsets.only(left: 15, right: 15),
          child: PhotoViewGallery.builder(
            itemCount: list.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(list[index]),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
            scrollPhysics: BouncingScrollPhysics(),
            backgroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(200)),

              //color: Theme.of(context).canvasColor,
              color: Colors.teal[500],
            ),
            enableRotation: true,
            loadingBuilder: (context, event) => Center(
              child: Container(
                width: 30.0,
                height: 30.0,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.orange,
                  /*    value: event == null
                      ? 0
                      : event.cumulativeBytesLoaded /event.expectedTotalBytes, */
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
