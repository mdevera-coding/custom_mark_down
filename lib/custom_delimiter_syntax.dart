import 'package:markdown/markdown.dart';
import 'package:markdown/src/charcode.dart';

class CustomDelimiterSyntax extends DelimiterSyntax {

  CustomDelimiterSyntax.underscores() : super(r'\~', requiresDelimiterRun: true, allowIntraWord: true, tags: _tags, startCharacter: $underscore);

  CustomDelimiterSyntax.asterisks() : super(r'\*', requiresDelimiterRun: true, allowIntraWord: true, tags: _tags, startCharacter: $asterisk);

  static final List<DelimiterTag> _tags = <DelimiterTag> [DelimiterTag('em', 1), DelimiterTag('strong', 1)];

}