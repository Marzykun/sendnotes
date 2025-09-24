import 'package:flutter/material.dart';
import 'package:rick_roll/data/notes_data.dart';
import 'package:rick_roll/models/link_item.dart';
import 'package:url_launcher/link.dart';

// Reuse your existing LinkItem/LinkCard/MaxWidth if you split files.
// If not, keep these here:

class LinkItem {
  final String title;
  final String subtitle;
  final Uri? url; // external
  final IconData icon;
  final bool isInternal;
  final String? route; // internal

  LinkItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.url,
    this.isInternal = false,
    this.route,
  });
}

class LinkCard extends StatelessWidget {
  const LinkCard({super.key, required this.item});
  final LinkItem item;

  @override
  Widget build(BuildContext context) {
    final card = Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(radius: 24, child: Icon(item.icon, size: 28)),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
            if (!item.isInternal) const Icon(Icons.open_in_new_outlined),
          ],
        ),
      ),
    );

    if (item.isInternal && item.route != null) {
      return InkWell(
        onTap: () => Navigator.pushNamed(context, item.route!),
        borderRadius: BorderRadius.circular(16),
        child: card,
      );
    } else if (item.url != null) {
      return Link(
        uri: item.url!,
        target: LinkTarget.blank,
        builder: (context, followLink) => InkWell(
          onTap: followLink,
          borderRadius: BorderRadius.circular(16),
          child: card,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

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

class LinksPage extends StatelessWidget {
  const LinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <LinkItem>[
      LinkItem(
        title: 'Notes',
        subtitle: 'Choose subject → Drive PDFs',
        icon: Icons.menu_book_outlined,
        isInternal: true,
        route: '/notes',
      ),
      LinkItem(
        title: 'PYQs / Previous Papers',
        subtitle: 'All past papers in one folder',
        icon: Icons.article_outlined,
        url: Uri.parse('https://drive.google.com/your_pyq_folder'), // <- edit
      ),
      LinkItem(
        title: 'Syllabus',
        subtitle: 'Official syllabus PDF',
        icon: Icons.rule_folder_outlined,
        url: Uri.parse(
          'https://drive.google.com/your_syllabus_pdf_or_folder',
        ), // <- edit
      ),
      // Optional:
      // LinkItem(
      //   title: 'Contact / Feedback',
      //   subtitle: 'Report issues or request notes',
      //   icon: Icons.mail_outline,
      //   url: Uri.parse('https://forms.gle/your_form'),
      // ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Resources')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: MaxWidth(
          child: Column(
            children: [
              for (final i in items) ...[
                LinkCard(item: i),
                const SizedBox(height: 12),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

// for MaxWidth helper (if you placed it there). Remove if not used.

class SubjectDetailPage extends StatelessWidget {
  const SubjectDetailPage({super.key, required this.subject});

  final SubjectLinks subject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject.name)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: MaxWidth(
            // pass the subject directly to the unit list instead of relying on ancestor lookup
            child: _UnitList(subject: subject),
          ),
        ),
      ),
    );
  }
}

class _UnitList extends StatefulWidget {
  const _UnitList({super.key, required this.subject});

  final SubjectLinks subject;

  @override
  State<_UnitList> createState() => _UnitListState();
}

class _UnitListState extends State<_UnitList> {
  @override
  Widget build(BuildContext context) {
    final subject = widget.subject;

    return Column(
      children: [
        for (final unit in subject.units) ...[
          _UnitCard(unit: unit),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class _UnitCard extends StatelessWidget {
  const _UnitCard({super.key, required this.unit});

  final UnitLink unit;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: unit.url,
      target: LinkTarget.blank, // opens in new tab on web
      builder: (context, followLink) {
        return InkWell(
          onTap: followLink,
          borderRadius: BorderRadius.circular(16),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(radius: 22, child: Icon(unit.icon, size: 24)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      unit.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Icon(Icons.open_in_new_outlined),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
