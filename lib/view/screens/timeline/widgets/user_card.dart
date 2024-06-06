import 'package:flutter/material.dart';

import '../../../../core/colors/color.dart';
import '../../../../utils/size.dart';

class UserCards extends StatelessWidget {
  final BuildContext context;
  final List users;
  const UserCards({super.key, required this.context, required this.users});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: percentWidth(context: context, width: 35),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('${users[0]['url']}'),
                      fit: BoxFit.fill),
                  color: grey,
                  shape: BoxShape.circle),
              height: 32,
              width: 32,
            ),
          ),
          users.length > 1
              ? Positioned(
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('${users[1]['url']}'),
                            fit: BoxFit.fill),
                        color: grey,
                        shape: BoxShape.circle),
                    height: 32,
                    width: 32,
                  ),
                )
              : SizedBox(),
          users.length > 2
              ? Positioned(
                  left: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('${users[2]['url']}'),
                            fit: BoxFit.fill),
                        color: grey,
                        shape: BoxShape.circle),
                    height: 32,
                    width: 32,
                  ),
                )
              : SizedBox(),
          users.length > 3
              ? Positioned(
                  left: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('${users[3]['url']}'),
                            fit: BoxFit.fill),
                        color: grey,
                        shape: BoxShape.circle),
                    height: 32,
                    width: 32,
                  ),
                )
              : SizedBox(),
          users.length > 4
              ? Positioned(
                  left: 80,
                  child: Container(
                    alignment: Alignment.center,
                    decoration:
                        BoxDecoration(color: grey, shape: BoxShape.circle),
                    height: 32,
                    width: 32,
                    child: Text('+${users.length - 4}'),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
