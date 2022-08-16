import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/thick_container.dart';
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
                decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "NYC",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        ThickContainer(),
                        Expanded(
                            child: SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              print(
                                  "The width is ${constraints.constrainWidth()}");
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                children:
                                    List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                      width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                        color:  Colors.white
                                      )),
                                    )),
                              );
                            },
                          ),
                        )),
                        // Icon(Icons.local_airport_rounded, color: Colors.white,),
                        Transform.rotate(angle: 1.5, child: IconTheme(data: data, child: child),),
                        ThickContainer(),
                        Expanded(child: Container()),
                        Text(
                          "London",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
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
