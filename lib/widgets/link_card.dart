import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import '../models/link_item.dart';

/// Simple responsive helpers
class R {
  static bool isMobile(BuildContext c) => MediaQuery.of(c).size.width < 600;
  static EdgeInsets pagePadding(BuildContext c) =>
      EdgeInsets.symmetric(horizontal: isMobile(c) ? 12 : 16, vertical: 16);
  static double cardMinHeight(BuildContext c) => isMobile(c) ? 64 : 72;
  static double titleSize(BuildContext c) => isMobile(c) ? 16 : 18;
  static double subtitleSize(BuildContext c) => isMobile(c) ? 12.5 : 13.5;
}

/// Caps content width on large screens, but stays full-width on phones.
class MaxWidth extends StatelessWidget {
  const MaxWidth({super.key, required this.child, this.maxWidth = 720});
  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final cap = w < maxWidth ? w : maxWidth;
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: cap),
        child: child,
      ),
    );
  }
}

/// Reusable card that supports internal route nav or external links.
class LinkCard extends StatelessWidget {
  const LinkCard({super.key, required this.item});
  final LinkItem item;

  @override
  Widget build(BuildContext context) {
    final mobile = R.isMobile(context);
    final avatarR = mobile ? 20.0 : 24.0;
    final iconSize = mobile ? 24.0 : 28.0;
    final hPad = mobile ? 12.0 : 16.0;
    final vPad = mobile ? 10.0 : 16.0;

    final card = Card(
      elevation: mobile ? 2 : 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: R.cardMinHeight(context)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: hPad, vertical: vPad),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(radius: avatarR, child: Icon(item.icon, size: iconSize)),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: R.titleSize(context),
                          ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      item.subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: R.subtitleSize(context),
                            color: Colors.grey,
                          ),
                    ),
                  ],
                ),
              ),
              if (!item.isInternal) const Icon(Icons.open_in_new_outlined),
            ],
          ),
        ),
      ),
    );

    // Internal navigation
    if (item.isInternal && item.route != null) {
      return InkWell(
        onTap: () => Navigator.pushNamed(context, item.route!),
        borderRadius: BorderRadius.circular(16),
        child: card,
      );
    }

    // External link
    if (item.url != null) {
      return Link(
        uri: item.url!,
        target: LinkTarget.blank, // open new tab on web
        builder: (context, follow) => InkWell(
          onTap: follow,
          borderRadius: BorderRadius.circular(16),
          child: card,
        ),
      );
    }

    // Fallback
    return card;
  }
}
