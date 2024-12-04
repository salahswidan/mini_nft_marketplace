import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/font_managers.dart';
import '../../../model/table_row_model.dart';

class CustomTableRowStateWidget extends StatelessWidget {
  const CustomTableRowStateWidget(
      {super.key,
     required this.tableRowModel});
  final TableRowModel tableRowModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(tableRowModel.title),
            SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.asset(
                tableRowModel.image,
                height: 39,
                width: 39,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Container(
              height: 39,
              width: 115,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tableRowModel.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: FontManagers.KMain,
                        color: Colors.white,
                        fontSize: 12),
                  ),
                  Text(
                    tableRowModel.subName,
                    style:
                        TextStyle(fontFamily: FontManagers.KMain, fontSize: 11),
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Icon(
                      CupertinoIcons.link,
                      size: 15,
                    ),
                    Text(
                      tableRowModel.count1,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                Text(
                  tableRowModel.percent,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
