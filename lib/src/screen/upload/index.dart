import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class UploadFile extends StatefulWidget {
  @override
  _UploadFileState createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  var file;
  void _openGallery() async {
    file = await ImagePicker.pickImage(source: ImageSource.gallery);
    print(file);
  }

  void _uploadFile() async {
    String base64Image = base64Encode(file.readAsBytesSync());
    String fileName = file.path.split('/').last;
    await http.post('https://1a2d4acb.ngrok.io/upload', body: {
      "image": base64Image,
      "name": fileName,
    }).then((res) {
      print(res);
    }).catchError((err) {
      print(err);
    });
    // String base64Image = base64Encode(file.readAsBytesSync());
    // String fileName = file.path.split('/').last;
    // await http.post('https://1a2d4acb.ngrok.io/upload',
    //     body: {"image": base64Image, "name": fileName}).then((res) {
    //   print(res);
    // }).catchError((err) {
    //   print(err);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Image"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: FlatButton(
                  onPressed: () {
                    _openGallery();
                  },
                  child: Center(
                    child: Text("Select File"),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    _uploadFile();
                  },
                  child: Center(
                    child: Text("Uplaod File"),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
