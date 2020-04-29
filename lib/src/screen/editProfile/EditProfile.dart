import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var profileImage;

 void _openGallery() async {
    profileImage = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      profileImage;
    });
  }

 void _openCamera() async {
    profileImage = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      profileImage;
    });
  }

  void OpenModelForSelect(BuildContext context) {
  Dialog simpleDialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
          height: 200.0,
          width: 300.0,
          child: Center(
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width * .5,
                      child: FlatButton(
                          onPressed: () {_openGallery();},
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Center(child: Text("Select From Gallery")))),
                  Container(
                      width: MediaQuery.of(context).size.width * .5,
                      child: FlatButton(
                          onPressed: () {_openCamera();},
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Center(child: Text("Select From Camera")))),
                ],
              ),
            ),
          )
          ));
  showDialog(context: context, builder: (BuildContext context) => simpleDialog);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Image"),
      ),
      body: Container(
        child: Center(
            child: profileImage == null
                ? Container(
                    width: 100.0,
                    height: 100.0,
                    child: ClipOval(
                      child: Material(
                        color: Colors.grey[200], // button color
                        child: InkWell(
                          splashColor: Colors.grey, // inkwell color
                          child: SizedBox(
                              width: 56, height: 56, child: Icon(Icons.camera)),
                          onTap: () {
                            OpenModelForSelect(context);
                          },
                        ),
                      ),
                    ))
                : Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: FileImage(profileImage))),
                  )),
      ),
    );
  }
}

// class OpenModelForSelect extends StatefulWidget {
//   @override
//   _EditProfileState createState() => _EditProfileState();
// }

// class OpenModelForSelectState extends State<OpenModelForSelect> {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//       child: Container(
//         child: Text("Select"),
//       ),
//     );
//   }
// }

