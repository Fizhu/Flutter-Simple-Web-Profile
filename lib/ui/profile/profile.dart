import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_web/utils/Sizes.dart';
import 'package:profile_web/utils/app_assets.dart';
import 'package:profile_web/utils/dimens.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  _mainContent() => Container(
        margin: const EdgeInsets.all(Dimens.margin256),
        width: Sizes.matchParentWidth(context),
        height: Sizes.matchParentHeight(context),
        child: Stack(children: [
          Card(
            margin: const EdgeInsets.fromLTRB(0.0, Dimens.margin128, 0.0, 0.0),
            elevation: 8.0,
            color: Colors.blueGrey[900],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: Container(
              width: Sizes.matchParentWidth(context),
              height: Sizes.matchParentHeight(context),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Container(
              width: Sizes.matchParentWidth(context) / 6,
              margin: const EdgeInsets.fromLTRB(Dimens.margin64, 0, 0, Dimens.margin64),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  AppAssets.imageProfile,
                ),
              ),
            ),
          ),
        ]),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.imageBg,
              repeat: ImageRepeat.repeat,
              width: Sizes.matchParentWidth(context),
              height: Sizes.matchParentHeight(context),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            ),
            _mainContent(),
          ],
        ),
      ),
    );
  }
}
