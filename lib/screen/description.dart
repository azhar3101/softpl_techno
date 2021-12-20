import 'package:flutter/material.dart';
import 'package:softpal_techno/constant/colors.dart';
import 'package:softpal_techno/constant/utils.dart';

class Descripion extends StatelessWidget {
  final String name, descriptiopn, bannerurl, posterurl, vote, launch_on;

  const Descripion(
      {Key? key,
      required this.name,
      required this.descriptiopn,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launch_on})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cornflower_blue_10,
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  )),
                  Positioned(
                      bottom: 10,
                      child: ModifiedText(
                          text: "Avarage Rating" + vote,
                          color: AppColors.white,
                          size: 13))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ModifiedText(
                  text: name != null ? name : "Not loaded",
                  color: AppColors.white,
                  size: 12),
            )
          ],
        ),
      ),
    );
  }
}
