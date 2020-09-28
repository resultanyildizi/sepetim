import 'package:meta/meta.dart';

//* Not in use for now
abstract class IDynamicLinksRepository {
  Future<String> createDynamicLink({@required String linkDescription});
}
