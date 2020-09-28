import 'package:Sepetim/domain/dynamic_links/i_dynamic_links_repository.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@LazySingleton(as: IDynamicLinksRepository)
class DynamicLinkRepository extends IDynamicLinksRepository {
  @override
  Future<String> createDynamicLink({@required String linkDescription}) async {
    const linkTitle = 'Sepetim';
    const uriPrefix = 'https://sepetimapp.page.link';
    const packageName = 'com.sepetimapp.Sepetim';
    const link = 'https://sepetimapp.com';
    const imageUrl =
        'https://firebasestorage.googleapis.com/v0/b/sepetim-e2723.appspot.com/o/app_images%2Fic_launcher_2.png?alt=media&token=c67ee3d0-47e5-43c9-90d5-29b058484e99';
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: uriPrefix,
      link: Uri.parse(link),
      androidParameters: AndroidParameters(
        fallbackUrl: Uri.parse(link),
        packageName: packageName,
        minimumVersion: 0,
      ),
      dynamicLinkParametersOptions: DynamicLinkParametersOptions(
        shortDynamicLinkPathLength: ShortDynamicLinkPathLength.short,
      ),
      iosParameters: IosParameters(
        fallbackUrl: Uri.parse(link),
        ipadFallbackUrl: Uri.parse(link),
        bundleId: 'com.google.FirebaseCppDynamicLinksTestApp.dev',
        minimumVersion: '0',
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: linkTitle,
        description: linkDescription,
        imageUrl: Uri.parse(imageUrl),
      ),
    );

    final ShortDynamicLink shortLink = await parameters.buildShortLink();
    final url = shortLink.shortUrl;

    return url.toString();
  }
}
