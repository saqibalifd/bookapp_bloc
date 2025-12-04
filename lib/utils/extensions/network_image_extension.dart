import 'dart:io';

import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

extension SimpleNetworkImageExtension on String {
  Widget simpleNetworkImage({
    double? height,
    double? width,
    BoxFit fit = BoxFit.cover,
    double borderRadius = 20,
    Color? placeholderColor,
  }) {
    return Builder(
      builder: (context) {
        final theme = Theme.of(context);
        final effectivePlaceholderColor =
            placeholderColor ?? theme.colorScheme.primary;

        return ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: CachedNetworkImage(
            imageUrl: this,
            height: height ?? context.mediaQueryHeight * .25,
            width: width ?? context.mediaQueryHeight * .25,
            fit: fit,
            placeholder: (context, url) => Container(
              height: height ?? context.mediaQueryHeight * .25,
              width: width ?? context.mediaQueryHeight * .25,
              color: theme.colorScheme.outline,
              child: Center(
                child: Platform.isAndroid
                    ? CircularProgressIndicator(
                        color: effectivePlaceholderColor,
                      )
                    : CupertinoActivityIndicator(
                        color: effectivePlaceholderColor,
                      ),
              ),
            ),
            errorWidget: (context, url, error) =>
                Icon(AppIcons.imageBroken, color: theme.colorScheme.primary),
          ),
        );
      },
    );
  }
}
