import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class WebCircleAvatar extends StatelessWidget {
  const WebCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundImage: (ImageFiles.webImage != null)
            ? Image.memory(ImageFiles.webImage!, fit: BoxFit.fill).image
            : null);
  }
}
