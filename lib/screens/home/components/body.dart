import 'package:easy_shop/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class BodyContent extends StatefulWidget {
  final String title;
  BodyContent({Key key, this.title}) : super(key: key);

  @override
  _BodyContentState createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/icons/code.svg",
            height: size.height * 0.3,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 20,
              color: TitleColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
