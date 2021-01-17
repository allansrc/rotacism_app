import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotacism_app/style/theme.dart';

class WordCompletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Memo Module')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _grid(),
          ],
        ),
      ),
    );
  }

  Widget _grid() {
    return Container(
      width: Get.width,
      height: Get.height * .9,
      padding: EdgeInsets.all(16),
      child: Center(
        child: CustomScrollView(
          slivers: [
            SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 78,
                childAspectRatio: .98,
                crossAxisSpacing: 3,
                mainAxisSpacing: 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (_, index) {
                  var imageURL = '[rtcsm]${index + 1}.jpeg';
                  return InkWell(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[200],
                                  blurRadius: 1,
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                )
                              ]),
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/rotacism/$imageURL',
                              fit: BoxFit.fitHeight,
                            ),
                          )));
                },
                childCount: 65,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
