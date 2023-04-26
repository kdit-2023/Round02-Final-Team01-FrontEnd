import 'package:donut/core/constants/size.dart';
import 'package:donut/core/constants/style.dart';
import 'package:donut/core/constants/theme.dart';
import 'package:donut/model/board/board.dart';
import 'package:donut/model/event/event.dart';
import 'package:donut/views/components/donut_round_tag.dart';
import 'package:flutter/material.dart';

class SeleteParticipantHeader extends StatelessWidget {
  const SeleteParticipantHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: donutColorBasic,width: 1))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getScreenWidth(context)*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/testimage.jpg",width: 60,height: 60,),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${boards[0].title}",style: headLine(),),
                      Row(
                        children: [
                          Text("개당 ${events[0].price}원",style: bodyText()),
                          DonutRoundTag("${events[0].paymentType}")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Text("${boards[0].city} ${boards[0].town}"),
              Text("${events[0].endAt}"),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}