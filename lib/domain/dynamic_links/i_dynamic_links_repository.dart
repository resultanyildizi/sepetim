import 'package:meta/meta.dart';

abstract class IDynamicLinksRepository {
  Future<String> createDynamicLink({@required String linkDescription});
}
