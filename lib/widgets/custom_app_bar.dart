import 'package:flutter/material.dart';

// Date
import 'package:intl/intl.dart';

// Providers
import 'package:provider/provider.dart';
import 'package:eerwerm/providers/date.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final date = Provider.of<DateProvider>(context).date;

    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
          ),
          child: Row(
            children: [
              Flexible(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              DateFormat('EEEE').format(date),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              DateFormat('MMMMd').format(date),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(height: 0.75, fontSize: 24),
                            ),
                          ]))),
              Flexible(
                flex: 1,
                child: Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 64.0,
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.tune,
                    size: 32.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

// Wrap Positioned.fill if want color, also border on bottom via
/*
  decoration: BoxDecoration(
    border: Border.all(color: Colors.blueAccent)
  ),
*/