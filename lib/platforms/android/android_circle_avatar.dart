import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class AndroidCircleAvatar extends StatelessWidget {
  const AndroidCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundImage: Image.file(ImageFiles.mobileImage!, fit: BoxFit.fill).image);
  }
}
