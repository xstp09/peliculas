import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr/pages/pages.dart';


import 'package:qr/providers/db_provider.dart';
import 'package:qr/providers/scan_list_provider.dart';
import 'package:qr/providers/ui_provider.dart';

import 'package:qr/widgets/widgets.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(
              onPressed: () {

                Provider.of<ScanListProvider>(context, listen: false).borrarTodos();

              },
              icon: Icon(Icons.delete_forever)
          )
        ],
      ),
      body: _HomePageBody(),

      bottomNavigationBar: CustomNavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class _HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

    switch(currentIndex){

      case 0:
        scanListProvider.cargarScansPorTipo('geo');
        return MapasPage();

      case 1:
        scanListProvider.cargarScansPorTipo('http');
        return DireccionesPage();

      default:
        return MapasPage();
    }

  }
}

