import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF56799),
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
              topRight: Radius.circular(21)),
              
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "NYC",
                      style: Styles.headLineStyle3,
                    ),
                    const Spacer(),
                    Text(
                      "London",
                      style: Styles.headLineStyle3,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
