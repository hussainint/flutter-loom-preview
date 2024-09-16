import 'package:flutter/material.dart';
import 'package:loom_preview/src/services/apiLoom.dart';

class LoomVideoPreview extends StatelessWidget {
  final String? loomLink;
  final Widget? loadingWidget;
  final double? previewHeight;
  final double? previewWidth;

  const LoomVideoPreview({
    super.key,
    required this.loomLink,
    this.loadingWidget,
    this.previewHeight,
    this.previewWidth,
  });
  @override
  Widget build(BuildContext context) {
    if (loomLink == null) return const SizedBox();
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: FutureBuilder(
          future: ApiLoom().videoGifUrl(loomLink!),
          builder: (context, snapp) {
            if (snapp.hasData) {
              return Image.network(
                'https://cdn.loom.com/${snapp.data}',
                width: previewWidth,
                height: previewHeight,
              );
            }
            return loadingWidget ?? const SizedBox();
          }),
    );
  }
}
