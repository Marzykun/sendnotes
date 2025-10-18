import 'package:flutter/material.dart';
import '../data/notes_data.dart';
import '../models/link_item.dart';
import '../widgets/link_card.dart';
import 'subject_detail_page.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key, this.semesterIndex = 0});
  final int semesterIndex;

  @override
  Widget build(BuildContext context) {
    final subjects = semestersData.length > semesterIndex
        ? semestersData[semesterIndex]
        : <SubjectLinks>[];
    final subjectCards = subjects
        .map(
          (s) => LinkItem(
            title: s.name,
            subtitle: 'Open units → Drive folders',
            icon: Icons.menu_book_outlined,
            isInternal: true,
          ),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Choose Your Subject')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: R.pagePadding(context),
          child: MaxWidth(
            child: Column(
              children: [
                for (int i = 0; i < subjects.length; i++) ...[
                  InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              SubjectDetailPage(subject: subjects[i]),
                        ),
                      );
                    },
                    child: LinkCard(item: subjectCards[i]),
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
