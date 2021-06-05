import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_web/data/models/user.dart';
import 'package:profile_web/utils/app_assets.dart';
import 'package:profile_web/utils/dimens.dart';
import 'package:profile_web/utils/size_config.dart';
import 'package:profile_web/utils/sizes.dart';

class Profile extends StatefulWidget {
  final User user;

  const Profile(this.user, {Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  _mainContent() => Container(
        margin: EdgeInsets.all(SizeConfig.width(Dimens.margin128)),
        child: Stack(children: [
          Card(
            margin: EdgeInsets.fromLTRB(0.0, SizeConfig.width(Dimens.margin32), 0.0, 0.0),
            elevation: 8.0,
            color: Colors.blueGrey[900],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: SizedBox(
              width: Sizes.matchParentWidth(context) / 2,
              height: Sizes.matchParentHeight(context),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    (SizeConfig.width(Dimens.margin48) + (Sizes.matchParentWidth(context) / 6)),
                    SizeConfig.width(Dimens.margin24),
                    SizeConfig.width(Dimens.margin24),
                    SizeConfig.width(Dimens.margin24)),
                child: Row(
                  children: [
                    Text(
                      widget.user.name,
                      style: TextStyle(fontSize: SizeConfig.width(Dimens.font16)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Container(
              width: Sizes.matchParentWidth(context) / 6,
              margin:
                  EdgeInsets.fromLTRB(SizeConfig.width(Dimens.margin24), 0, 0, SizeConfig.width(Dimens.margin24)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
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
    SizeConfig().init(context);
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
            Center(
              child: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
              ),
            ),
            _mainContent(),
          ],
        ),
      ),
    );
  }
}
