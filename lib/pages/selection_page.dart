import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:healthy/pages/camera_hair_page.dart';
import 'package:healthy/pages/camera_skin_page.dart';
import 'package:healthy/strings.dart' as strings;
import 'package:healthy/dimens.dart' as dimens;

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(dimens.insetL),
        child: Column(
          children: [
            Text(
              strings.msgSelect,
              style: textTheme.headline3,
            ),
            SizedBox(
              height: dimens.insetL,
            ),
            GestureDetector(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(dimens.insetL),
                  child: Column(
                    children: [
                      Icon(
                        Icons.face,
                        size: 72,
                      ),
                      SizedBox(
                        height: dimens.insetM,
                      ),
                      Text(strings.hair),
                    ],
                  ),
                ),
              ),
              onTap: () => Get.to(CameraHairPage()),
            ),
            SizedBox(height: dimens.insetL),
            GestureDetector(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(dimens.insetL),
                  child: Column(
                    children: [
                      Icon(
                        Icons.face_retouching_natural_sharp,
                        size: 72,
                      ),
                      SizedBox(
                        height: dimens.insetM,
                      ),
                      Text(strings.skin),
                    ],
                  ),
                ),
              ),
              onTap: () => Get.to(CameraSkinPage()),
            ),
            SizedBox(height: dimens.insetL),
            ElevatedButton(
              onPressed: () {},
              child: Text('View Reports'),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
      ),
    );
  }
}
