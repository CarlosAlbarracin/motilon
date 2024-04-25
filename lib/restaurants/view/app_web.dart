import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motilon/restaurants/model/content_web.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebView extends StatefulWidget {
  const AppWebView({Key? key, required this.data}) : super(key: key);
  final ModelWeb data;

  @override
  // ignore: library_private_types_in_public_api
  _AppWebViewState createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // Inicializa el controlador aquí si es necesario
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          widget.data.title,
          style: GoogleFonts.acme(),
        ),
      ),
      body: WebViewWidget( // Asumiendo que 'WebViewWidget' es el nuevo widget a utilizar
       controller: _controller, 
       
        // Añade el controlador aquí
        // Añade la carga de la URL después de la creación del WebViewWidget
      // Añade el controlador aquí
      ),
    );
  }
}