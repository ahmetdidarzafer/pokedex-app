import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl = 'images/pokeball.png';
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(Constants.title, style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 48,
      )),
              ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(pokeballImageUrl,
            width: ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw,
            fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}