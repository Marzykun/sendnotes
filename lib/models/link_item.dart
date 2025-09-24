import 'package:flutter/material.dart';

class LinkItem {
  final String title;
  final String subtitle;
  final Uri? url;           // external link (opens new tab)
  final IconData icon;
  final bool isInternal;    // if true, navigate to route
  final String? route;      // route name for internal nav

  const LinkItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.url,
    this.isInternal = false,
    this.route,
  });
}

// Data model for Notes
class UnitLink {
  final String title;     // e.g., “Unit 1 – Intro”
  final Uri url;          // Drive URL
  final IconData icon;
  const UnitLink({
    required this.title,
    required this.url,
    this.icon = Icons.folder_open,
  });
}

class SubjectLinks {
  final String name;        // e.g., “Operating Systems”
  final List<UnitLink> units;
  const SubjectLinks({
    required this.name,
    required this.units,
  });
}
