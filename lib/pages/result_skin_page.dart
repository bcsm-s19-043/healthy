import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:healthy/dimens.dart' as dimens;
import 'package:healthy/pages/product_page.dart';
import 'package:healthy/pages/remedy_page.dart';
import 'package:healthy/strings.dart' as strings;
import 'package:healthy/widgets/view_more_tile.dart';

class ResultSkinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.results),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(dimens.insetL),
          child: Column(
            children: [
              Text(
                strings.skinHealthScore,
                style: textTheme.headline4,
              ),
              Text(
                '70.0',
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                strings.remarks,
                style: textTheme.headline4,
              ),
              Text(
                'GOOD',
                style: textTheme.headline3?.copyWith(
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: dimens.insetM,
              ),
              ViewMoreTile(
                imageAssetName: 'assets/img/product.jpg',
                title: 'Products',
                subtitle: 'Natural products for better health',
                onClick: () => Get.to(ProductPage()),
              ),
              SizedBox(
                height: dimens.insetM,
              ),
              ViewMoreTile(
                imageAssetName: 'assets/img/plant.jpg',
                title: 'Home Remedies',
                subtitle: 'For the DIY enthusiasts',
                onClick: () => Get.to(RemedyPage()),
              ),
              SizedBox(
                height: dimens.insetM,
              ),
              ViewMoreTile(
                imageAssetName: 'assets/img/person.jpg',
                title: 'Dermatologies',
                subtitle: 'Need expert advice?',
              ),
              SizedBox(
                height: dimens.insetL,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('View Reports'),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}
