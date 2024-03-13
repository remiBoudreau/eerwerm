import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:eerwerm/providers/date.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final date = Provider.of<DateProvider>(context).date;
    final setDate = Provider.of<DateProvider>(context).setDate;

    return Padding(
        padding:
            EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0, bottom: 12.0),
        child: FractionallySizedBox(
            widthFactor: 1,
            child: EasyInfiniteDateTimeLine(
              firstDate: DateTime.now(),
              focusDate: date,
              lastDate: DateTime.now().add(const Duration(days: 30)),
              onDateChange: (selectedDate) {
                setDate(selectedDate);
              },
              showTimelineHeader: false,
              timeLineProps: const EasyTimeLineProps(
                hPadding: 0.0,
              ),
              dayProps: const EasyDayProps(
                height: 64,
                dayStructure: DayStructure.dayStrDayNum,
                activeDayStyle: DayStyle(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff3371FF),
                        Color(0xff8426D6),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
