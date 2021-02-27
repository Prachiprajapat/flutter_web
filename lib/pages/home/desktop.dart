import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/cards_list.dart';
import 'package:flutter_web/widgets/page_header.dart';
import 'package:flutter_web/widgets/sales_chart.dart';
import 'package:flutter_web/widgets/top_buyer.dart';

import '../../CustomText.dart';

class HomePageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PageHeader(text: MediaQuery.of(context).size.width.toString(),),
        CardsList(),
        Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 600,
                  width: MediaQuery.of(context).size.width / 1.9,
                  child: SalesChart()),

              Container(
                width:  MediaQuery.of(context).size.width / 4,
                height: 600,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),

                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(0, 3),
                          blurRadius: 16
                      )
                    ]),
                child: Column(
                  children: [
                    CustomText(text: 'Top Buyers', size: 30,),
                    TopBuyerWidget(),
                    TopBuyerWidget(),
                    TopBuyerWidget(),
                    TopBuyerWidget(),
                    TopBuyerWidget(),
                    TopBuyerWidget(),
                    TopBuyerWidget(),
                    TopBuyerWidget(),
                  ],
                ),
              )

            ],
          ),
        ),
      ],
    );
  }
}