import 'package:flutter/material.dart';
import 'package:ordo_flutter/presentation/components/gen/assets.gen.dart';
import 'package:ordo_flutter/presentation/components/gen/colors.gen.dart';
import 'package:ordo_flutter/presentation/components/styles/typography.dart';
import 'package:timelines/timelines.dart';

class OrderTimeline extends StatelessWidget {
  const OrderTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorName.baseWhite,
      ),
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          direction: Axis.horizontal,
          indicatorPosition: 0.2,
          nodePosition: 0,
        ),
        builder: TimelineTileBuilder(
          itemCount: _timelineOrder.length,
          itemExtent:
              (MediaQuery.of(context).size.width - 80) / _timelineOrder.length,
          indicatorBuilder: (context, index) {
            final timeline = _timelineOrder[index];
            final isBuilding = timeline == 'Pembangunan';
            final isFinish = timeline == 'Serah Terima';

            return isBuilding
                ? Assets.icons.icTimeCircleFilled.svg(
                    height: 15,
                    width: 15,
                    colorFilter: const ColorFilter.mode(
                      ColorName.baseDark,
                      BlendMode.srcIn,
                    ),
                  )
                : isFinish
                    ? Assets.icons.icCdBold.svg(
                        height: 15,
                        width: 15,
                        colorFilter: const ColorFilter.mode(
                          ColorName.gray300,
                          BlendMode.srcIn,
                        ),
                      )
                    : Assets.icons.icTickCircleBold.svg(
                        height: 15,
                        width: 15,
                        colorFilter: const ColorFilter.mode(
                          ColorName.baseDark,
                          BlendMode.srcIn,
                        ),
                      );
          },
          endConnectorBuilder: (context, index) {
            return index == 2 || index == 3
                ? _buildDashLine()
                : _buildSolidLine();
          },
          startConnectorBuilder: (context, index) {
            return index != 0
                ? index == 3
                    ? _buildDashLine()
                    : _buildSolidLine()
                : null;
          },
          contentsBuilder: (context, index) {
            return Text(
              _timelineOrder[index],
              style: AppTypography(context).outfit10_400,
            );
          },
        ),
      ),
    );
  }

  Widget _buildSolidLine() => const SolidLineConnector(
        thickness: 1,
        color: ColorName.baseDark,
      );

  Widget _buildDashLine() => const DashedLineConnector(
        thickness: 1,
        color: ColorName.gray300,
      );
}

final _timelineOrder = <String>[
  'Pemesanan',
  'Adminitrasi',
  'Pembangunan',
  'Serah Terima',
];
