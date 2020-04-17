import 'package:flutter/material.dart';
import 'accountcard.dart';
import 'appointmentcard.dart';

Color primaryColors = Color(0xff0000FF);

class HospitalDashboardHome extends StatelessWidget {
  const HospitalDashboardHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('Watchlist'),
      backgroundColor: Color(0xff0E468D ),
      elevation: 10,
      actions: <Widget>[
        Icon(Icons.notifications),
        Container(
          width: 50,
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://scontent.fpnq1-2.fna.fbcdn.net/v/t1.0-0/p640x640/87812087_2437698123208984_4813671630209286144_o.jpg?_nc_cat=107&_nc_sid=8024bb&_nc_ohc=M7fMID3OdisAX9nFo3a&_nc_ht=scontent.fpnq1-2.fna&_nc_tp=6&oh=bb604ed4421d7b549bfa9f1129cbe614&oe=5E96DCEF"),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 2,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff00ff1d),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }

  Widget _buildBottomBar() {
    return BottomAppBar(
      elevation: 30,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.label_outline,
              size: 35,
              color: primaryColor,
            ),
            Icon(
              Icons.ac_unit,
              color: Colors.grey,
              size: 30,
            ),
            Icon(
              Icons.tune,
              size: 30,
              color: Colors.grey,
            ),
            Icon(
              Icons.perm_identity,
              color: Colors.grey,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(

                  children: <Widget>[
                    /*Text(
                      "",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),*/
                    SizedBox(height: 10),
                    _buildCard(context, child: AppointmentCard()),
                    SizedBox(height: 20),
                    Text(
                      "Today (15 March)",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildCard(
                      context,
                      child: AccountCard(
                        name: 'NIFTY BANK',
                        id: 'INDICES',
                        hour: '25166',
                        active: true,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildCard(
                      context,
                      child: AccountCard(
                        name: 'HDFC',
                        id: 'NSE',
                        hour: '2066.80',
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildCard(
                      context,
                      child: AccountCard(
                        name: 'RELIANCE',
                        id: 'NSE',
                        hour: '1105.30',
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
    );




  }




  Widget _buildCard(context, {Widget child}) {
    return Card(
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        child: child,
      ),
    );
  }




}