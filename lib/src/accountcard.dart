import 'package:flutter/material.dart';

Color primaryColor = Color(0xff0074ff);

class AccountCard extends StatelessWidget {
  final bool active;
  final String name;
  final String id;
  final String hour;

  const AccountCard(
      {Key key, this.active = false, this.name, this.hour, this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(left: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: active ? primaryColor : Colors.white,
      ),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Container(
              width: 180,
              child: ListTile(
                title: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(id),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  hour,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                FlatButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "BUY",
                  ),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}