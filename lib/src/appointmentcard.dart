import 'package:flutter/material.dart';
import 'painter.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _buildItem("Hourly Trader"),
        _buildDivider(),
        _buildItem("15 Min Trader"),
      ],
    );
  }

  Widget _buildDivider() {
    return Flexible(
      flex: 1,
      child: SizedBox(
        width: 5,
        child: Container(
          alignment: Alignment.centerRight,
          height: 70,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItem(String title) {
    return Flexible(
      flex: 5,
      child: Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}