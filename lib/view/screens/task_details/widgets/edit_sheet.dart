import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/size.dart';

class EditSheet extends StatelessWidget {
  const EditSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Wrap(
        children: [
          Container(
            alignment: Alignment.centerRight,
            height: 25,
            width: percentWidth(context: context),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset('assets/icons/close.svg')),
          ),
          ListTile(
            leading: SvgPicture.asset('assets/icons/edit.svg'),
            title: Text(
              'Edit task',
              style: R16,
            ),
          ),
          ListTile(
            leading: SvgPicture.asset('assets/icons/copy.svg'),
            title: Text(
              'Duplicated task',
              style: R16,
            ),
          ),
          ListTile(
            leading: SvgPicture.asset('assets/icons/delete.svg'),
            title: Text(
              'Delete task',
              style: R16.copyWith(color: error),
            ),
          )
        ],
      ),
    );
  }
}
