import 'package:flutter/material.dart';
import 'package:qr/widgets/scan_tiles.dart';


class DireccionesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ScanTiles(tipo: 'http');
  }
}