import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';

class ImageGallery extends StatefulWidget {
  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  List imageArray = [];
  var image;

  @override
  void initState() {
    super.initState();
  }

  void _openCamera() async {
    // var file = await ImagePicker.pickImage(source: ImageSource.camera);
    image = await ImagePicker.pickImage(source: ImageSource.camera);
    print(image);
    imageArray.add(image);
    setState(() {
      imageArray;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(imageArray);
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Gallery"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 1,
                  // decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Center(
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        _openCamera();
                      },
                      child: Text(
                        "open camera",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * .8,
                // decoration: BoxDecoration(border: Border.all(width: 1)),
                child: imageArray.isEmpty
                    ? Center(
                        child: Text("No Image"),
                      )
                    : GridView.count(
                        crossAxisCount: 2,
                        children: List.generate(imageArray.length, (generator) {
                          var img = imageArray[generator];
                          return Container(
                              padding: EdgeInsets.all(5),
                              // decoration: BoxDecoration(border: Border.all(width: 1)),
                              child: Image.file(img));
                        }),
                      ),
              )
              // Center(
              //   child:
              // ),
            ],
          ),
        ));
  }
}
