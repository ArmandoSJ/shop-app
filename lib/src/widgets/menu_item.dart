import 'package:flutter/material.dart';
import 'package:shop_app/src/utils/constants.dart';

class MenuItem extends StatelessWidget {

  final bool isActive, isHover, showBorder;
  final int itemCount;
  final String  vTitle;
  final IconData iconName;
  final VoidCallback onClickListener;

  const MenuItem({Key? key,
    this.isActive = false,
    this.isHover = false,
    this.itemCount = 0,
    this.showBorder = false,
    this.iconName = Icons.search_outlined,
    required this.vTitle,
    required this.onClickListener
  
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: InkWell(
        onTap: onClickListener,
        child: Row(
          children: [
            (isActive || isHover)
                ? IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () {},
                )
                : SizedBox(width: 15),
            SizedBox(width: 20.0 / 4),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 15, right: 5),
                decoration: showBorder
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFDFE2EF)),
                        ),
                      )
                    : null,
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(iconName),
                        onPressed: () {},
                    ),
                    SizedBox(width: kDefaultPadding * 0.75),
                    Text(
                      vTitle,
                      style: Theme.of(context).textTheme.button!.copyWith(
                            color:
                                (isActive || isHover) ? kTextColor : kGrayColor,
                          ),
                    ),
                   // Spacer(),
                   // if (itemCount != null) CounterBadge(count: itemCount)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}