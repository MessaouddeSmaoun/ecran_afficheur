
import 'package:ecran_afficheur/state_manager/state_provider_ecran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class DateTimeWidget extends ConsumerWidget {
  const DateTimeWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return (ref.watch(isClockDateVisible))?Flexible(
      flex: 2,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: FractionallySizedBox(
                widthFactor: 0.3,
                heightFactor: 3,
                child: FittedBox(
                  child: Text(
                    ref.watch(date),
                    style: TextStyle(fontSize: 2500,color:  ref.watch(colorDateHorloge),fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
          alignment: Alignment.centerRight,
    child: FractionallySizedBox(
    widthFactor: 0.3,
    heightFactor: 3,
                child: FittedBox(
                  child: Text(
                    ref.watch(time),
                    style: TextStyle(fontSize: 2500,color:  ref.watch(colorDateHorloge),fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    ):const SizedBox();
  }
}