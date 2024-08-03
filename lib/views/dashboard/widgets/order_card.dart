import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:ordo_flutter/presentation/components/gen/assets.gen.dart';
import 'package:ordo_flutter/presentation/components/gen/colors.gen.dart';
import 'package:ordo_flutter/presentation/components/styles/typography.dart';

import '../../../../../../common/extension/extension.dart';
import '../../../../../../domain/order/order.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ColorName.baseWhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                order.invoiceNo,
                style: AppTypography(context).outfit12_400,
              ),
              _buildCommercil(context),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 85,
                width: 100,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent,
                ),
                child: Image.asset(order.imagePath),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Assets.icons.icHouse2Broken.svg(
                        height: 14,
                        width: 14,
                        colorFilter: const ColorFilter.mode(
                          ColorName.baseDark,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        order.name,
                        style: AppTypography(context).outfit12_400,
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      Assets.icons.icLocationBroken.svg(
                        height: 14,
                        width: 14,
                        colorFilter: const ColorFilter.mode(
                          ColorName.baseDark,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        order.address,
                        style: AppTypography(context).outfit12_400,
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      Assets.icons.icCalendarBroken.svg(
                        height: 14,
                        width: 14,
                        colorFilter: const ColorFilter.mode(
                          ColorName.baseDark,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        order.date?.toStringFormatted(
                              'dd/MM/yyyy, HH:mm',
                            ) ??
                            '',
                        style: AppTypography(context).outfit12_400,
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  RichText(
                    text: TextSpan(
                      text: 'Rp ',
                      style: AppTypography(context).outfit12_400,
                      children: [
                        TextSpan(
                          text: order.nominal.toCurrencyFormatted(),
                          style: AppTypography(context).outfit14_700,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Visibility(
            visible: order.isHasPenalty,
            child: Column(
              children: [
                const SizedBox(height: 10),
                _buildDottedLine(),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Assets.icons.icFrameBroken.svg(
                      height: 14,
                      width: 14,
                      colorFilter: const ColorFilter.mode(
                        ColorName.baseDark,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 5),
                    RichText(
                      text: TextSpan(
                        text: 'Denda Rp ',
                        style: AppTypography(context).outfit12_400,
                        children: [
                          TextSpan(
                            text: order.nominalFine.toCurrencyFormatted(),
                            style: AppTypography(context).outfit12_700,
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 9,
                      ),
                      decoration: BoxDecoration(
                        color: ColorName.baseDark,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Assets.icons.icDangerFilled.svg(
                            height: 10,
                            width: 10,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            'Terlambat ${order.lateDays} Hari',
                            style: AppTypography(context)
                                .outfit10_500
                                .copyWith(color: ColorName.baseWhite),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildCommercil(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: ColorName.baseGreen,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        'Komersil',
        style: AppTypography(context)
            .outfit12_400
            .copyWith(color: ColorName.baseWhite),
      ),
    );
  }

  Widget _buildDottedLine() => const DottedLine(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        lineLength: double.infinity,
        lineThickness: 1,
        dashLength: 4.0,
        dashColor: ColorName.gray300,
        dashRadius: 0.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      );
}
