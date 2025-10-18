import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import '../models/link_item.dart';
import 'notes_page.dart';
import '../widgets/link_card.dart';

class LinksPage extends StatelessWidget {
  const LinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <LinkItem>[
      // Semester links (we'll handle navigation manually so we can pass the semester index)
      LinkItem(
        title: 'Semester 1',
        subtitle: 'View subjects & notes',
        icon: Icons.menu_book_outlined,
        isInternal: true,
      ),
      LinkItem(
        title: 'Semester 2',
        subtitle: 'View subjects & notes',
        icon: Icons.menu_book_outlined,
        isInternal: true,
      ),
      LinkItem(
        title: 'Semester 3',
        subtitle: 'View subjects & notes',
        icon: Icons.menu_book_outlined,
        isInternal: true,
      ),
      LinkItem(
        title: 'Semester 4',
        subtitle: 'Coming soon',
        icon: Icons.school_outlined,
      ),
      LinkItem(
        title: 'Semester 5',
        subtitle: 'Coming soon',
        icon: Icons.school_outlined,
      ),
      LinkItem(
        title: 'Semester 6',
        subtitle: 'Coming soon',
        icon: Icons.school_outlined,
      ),
      LinkItem(
        title: 'Semester 7',
        subtitle: 'Coming soon',
        icon: Icons.school_outlined,
      ),
      LinkItem(
        title: 'Semester 8',
        subtitle: 'Coming soon',
        icon: Icons.school_outlined,
      ),

      // Global resources
      LinkItem(
        title: 'PYQs / Previous Papers',
        subtitle: 'All past papers (Drive)',
        icon: Icons.article_outlined,
        url: Uri.parse('https://drive.google.com/your_pyq_folder'),
      ),
      LinkItem(
        title: 'Syllabus',
        subtitle: 'Official syllabus PDF/folder',
        icon: Icons.rule_folder_outlined,
        url: Uri.parse('https://drive.google.com/your_syllabus'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Resources')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: R.pagePadding(context),
          child: MaxWidth(
            child: Column(
              children: [
                for (int idx = 0; idx < items.length; idx++) ...[
                  // If this is an internal semester link, navigate to NotesPage with index
                  if (items[idx].isInternal && items[idx].url == null) ...[
                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => NotesPage(semesterIndex: idx),
                          ),
                        );
                      },
                      child: LinkCard(item: items[idx]),
                    ),
                  ] else ...[
                    // If no url/route, just show disabled card
                    items[idx].url != null
                        ? LinkCard(item: items[idx])
                        : _DisabledCard(item: items[idx]),
                  ],
                  const SizedBox(height: 12),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Disabled card for "Coming soon"
class _DisabledCard extends StatelessWidget {
  const _DisabledCard({required this.item});
  final LinkItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.grey.shade900,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(radius: 22, child: Icon(item.icon, size: 24)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.subtitle,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Text('⏳', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
