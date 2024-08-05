import 'package:bookly/core/utils/functions/snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> luanchCustmUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    } else {
      snackBar(context, 'cannot luanch url');
    }
  }
}

