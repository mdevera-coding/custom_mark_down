import 'package:custom_mark_down/custom_delimiter_syntax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

void main() {
  runApp(const MyApp());
}

  const String _data = """
  # Markdown
  ---
  The Basic Markdown Demo shows the effect of the four Markdown extension sets
  on formatting basic and extended Markdown tags.

  ## Bold

  Make this word **bold** with one astrisk one each side of the word. Instead of using two asterisks.
  
  Bold *word* with one asterisk.

  ## Italic

  Make this word _italic_ with with one tilde on each side of the word. Instead of using underscores.

  Italicize ~word~ with one tilde.

  ## Header

  Use header as #h1, #h2, #h3 vs # header 1, ## header 2, ### header 3.

  """;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom mark down',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Custom mark down'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Markdown(data: _data, 
                          extensionSet: md.ExtensionSet(<md.BlockSyntax>[], <md.InlineSyntax>[CustomDelimiterSyntax.asterisks(), CustomDelimiterSyntax.underscores()]),
        ),
      ));
  }
}
