import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class BuySellList extends StatelessWidget {
  const BuySellList({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final buySell = [
      'Buy',
      'Sell',
      'Buy',
      'Sell',
      'Buy',
      'Sell',
      'Buy',
      'Sell',
      'Buy',
      'Sell',
    ];
    final crypto = [
      'USDT',
      'BTC',
      'ETH',
      'LTC',
      'XRP',
      'ADA',
      'USDT',
      'BTC',
      'ETH',
      'LTC',
    ];
    final amount = [
      '100',
      '200',
      '300',
      '400',
      '500',
      '600',
      '700',
      '800',
      '900',
      '1000',
    ];
    final cost = [
      '100',
      '200',
      '500',
      '600',
      '500',
      '500',
      '700',
      '500',
      '600',
      '1000',
    ];
    final fee = [
      '0.00100',
      '0.000200',
      '0.000300',
      '0.000400',
      '0.000500',
      '0.000600',
      '0.000700',
      '0.000800',
      '0.000900',
      '0.0001000',
    ];
    final orderId = [
      '550e8400-e29b-41d4-a716-446655440000',
      '550e8400-e29b-41d4-a716-446655440000',
      '550e8400-e29b-41d4-a716-446655440000',
      '550e8400-e29b-41d4-a716-446655440000',
      '550e8400-e29b-41d4-a716-446655440000',
      '550e8400-e29b-41d4-a716-446655440000',
      '550e8400-e29b-41d4-a716-446655440000',
      '550e8400-e29b-41d4-a716-446655440000',
      '550e8400-e29b-41d4-a716-446655440000',
      '550e8400-e29b-41d4-a716-446655440000',
    ];
    final orderRate = [
      '1',
      '0.000200',
      '0.000300',
      '0.000400',
      '0.000500',
      '0.000600',
      '0.000700',
      '0.000800',
      '0.000900',
      '0.0001000',
    ];
    final orderDate = [
      '2022-01-01',
      '2022-01-01',
      '2022-01-01',
      '2022-01-01',
      '2022-01-01',
      '2022-01-01',
      '2022-01-01',
      '2022-01-01',
      '2022-01-01',
      '2022-01-01',
    ];

    return ListView.builder(
      itemCount: buySell.length,
      itemBuilder: (context, index) => SizedBox(
        child: Card(
          color: AppColors.whiteColor,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: AutoSizeText(
                    buySell[index],
                    textAlign: TextAlign.center,
                    minFontSize: 16,
                    maxFontSize: 18,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'amaranth',
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Crypto: ',
                      textAlign: TextAlign.center,
                      minFontSize: 14,
                      maxFontSize: 18,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth',
                        color: AppColors.blackColor,
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText(
                        crypto[index],
                        textAlign: TextAlign.start,
                        minFontSize: 14,
                        maxFontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Amount: ',
                      textAlign: TextAlign.center,
                      minFontSize: 14,
                      maxFontSize: 18,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth',
                        color: AppColors.blackColor,
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText(
                        amount[index],
                        textAlign: TextAlign.start,
                        minFontSize: 14,
                        maxFontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Cost: ',
                      textAlign: TextAlign.center,
                      minFontSize: 14,
                      maxFontSize: 18,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth',
                        color: AppColors.blackColor,
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText(
                        cost[index],
                        textAlign: TextAlign.start,
                        minFontSize: 14,
                        maxFontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Fee: ',
                      textAlign: TextAlign.center,
                      minFontSize: 14,
                      maxFontSize: 18,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth',
                        color: AppColors.blackColor,
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText(
                        fee[index],
                        textAlign: TextAlign.start,
                        minFontSize: 14,
                        maxFontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'OrderId: ',
                      textAlign: TextAlign.center,
                      minFontSize: 14,
                      maxFontSize: 18,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth',
                        color: AppColors.blackColor,
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText(
                        orderId[index],
                        textAlign: TextAlign.start,
                        minFontSize: 14,
                        maxFontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Order Rate: ',
                      textAlign: TextAlign.center,
                      minFontSize: 14,
                      maxFontSize: 18,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth',
                        color: AppColors.blackColor,
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText(
                        orderRate[index],
                        textAlign: TextAlign.start,
                        minFontSize: 14,
                        maxFontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Order Date: ',
                      textAlign: TextAlign.center,
                      minFontSize: 14,
                      maxFontSize: 18,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth',
                        color: AppColors.blackColor,
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText(
                        orderDate[index],
                        textAlign: TextAlign.start,
                        minFontSize: 14,
                        maxFontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
