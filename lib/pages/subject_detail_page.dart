import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';
import '../models/link_item.dart';
import '../widgets/link_card.dart';
//import 'package:url_launcher/link.dart';


class SubjectDetailPage extends StatelessWidget {
  const SubjectDetailPage({super.key, required this.subject});
  final SubjectLinks subject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject.name)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: R.pagePadding(context),
          child: MaxWidth(
            child: Column(
              children: [
                for (final unit in subject.units) ...[
                  Link(
                    uri: unit.url,
                    target: LinkTarget.blank,
                    builder: (context, follow) => InkWell(
                      onTap: follow,
                      borderRadius: BorderRadius.circular(16),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
                    ),
                  ),
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
