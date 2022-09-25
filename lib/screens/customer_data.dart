import 'package:flutter/material.dart';
import '../models/models.dart';
import '../responsive.dart';
import 'widgets/widgets.dart';

class CustomerDataScreen extends StatelessWidget {
  const CustomerDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300), child: SideMenu()),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  NavBar(),
                  DataBody(),
                  Footer(),
                ]),
          ),
        ),
      ),
    );
  }
}

class DataBody extends StatelessWidget {
  const DataBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final customers = Customer.customers.toList();

    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Text('NAME')),
                          DataColumn(label: Text('EVENT')),
                          DataColumn(label: Text('TICKETS')),
                          DataColumn(label: Text('PHONE NO')),
                          DataColumn(label: Text('ID')),
                        ],
                        rows: getRows(customers),
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}

List<DataRow> getRows(List<Customer> customers) =>
    customers.map((Customer customer) {
      final cells = [
        customer.name,
        customer.eventname,
        customer.numberoftickets,
        customer.phonenumber,
        customer.id
      ];
      return DataRow(cells: getCells(cells));
    }).toList();

List<DataCell> getCells(List<dynamic> cells) =>
    cells.map((data) => DataCell(Text('$data'))).toList();
