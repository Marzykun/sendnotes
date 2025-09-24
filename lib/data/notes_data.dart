//import 'package:flutter/material.dart';
import '../models/link_item.dart';

// Replace placeholder URLs with your actual Drive links.
// You can add/remove units per subject freely.
final subjectsData = <SubjectLinks>[
  SubjectLinks(
    name: "Data Structures And Algorithm",
    units: [
      UnitLink(title: "Unit 1 – Basics", url: Uri.parse("https://drive.google.com/file/d/19-Y6eQZud2eR1ndxX7-ej7QRH_b6Wrf9/view")),
      UnitLink(title: "Unit 2 – Stacks & Queues", url: Uri.parse("https://drive.google.com/file/d/12xHo29Rf8qU-LKQQ1pS1oMI56DYAh2fd/view")),
      UnitLink(title: "Unit 3 – Trees", url: Uri.parse("https://drive.google.com/drive/folders/1sL_eU-2m-k0Vyfqlf5hfX0lN8KLPdvQC?usp=sharing")),
      UnitLink(title: "Unit 4 – Graphs", url: Uri.parse("https://drive.google.com/drive/folders/1XGcOCsJy6077blhNYX7VMRuRqyKnh6e-?usp=sharing")),
      UnitLink(title: "Unit 5 – Sorting & Searching", url: Uri.parse("https://drive.google.com/drive/folders/14XhSNSDjNZuhzhzkZX8odbbBNDydYMuO?usp=sharing")),
    ],
  ),
  SubjectLinks(
    name: "Computer Organization And Architecture",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/file/d/1DZoMeHSan_5ON9FdpeqIsEVMuSKWnrdm/view")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/file/d/1XyPBUN-UKWaCr1fVzunoSLQuDeWUqSQJ/view")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/file/d/1dGAix8oFN0TWNIhaTGa54miTFVwk3bqU/view")),
      UnitLink(title: "Unit 4", url: Uri.parse("https://drive.google.com/file/d/1l2THbWr0dLIxf-3ZZWw8dZu4EBEm5hs6/view")),
      UnitLink(title: "Unit 5", url: Uri.parse("https://drive.google.com/file/d/1LtoEpjOfG033Q3nxQJrpgkwd5ELdIbNB/view")),
    ],
  ),
  SubjectLinks(
    name: "Operating Systems",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/drive/folders/1IQjyEolstrOXBvVMMhEoQBJW38FkhJSp?usp=sharing")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/drive/folders/12PGy2h2fOSkLbdu1022F7uybPg80Y8br?usp=sharing")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/drive/folders/1RyvthQwGko5D4sCD5FZz8RA3nbJZ3Y85?usp=sharing")),
      UnitLink(title: "Unit 4", url: Uri.parse("https://drive.google.com/drive/folders/1tdUNkg3OteZoNSZI4nMDjzHBpDISu8HK?usp=sharing")),
      UnitLink(title: "Unit 5", url: Uri.parse("https://drive.google.com/drive/folders/1FK6xXPYDgICQ7IeDt9KmnwgoAYizI8Ef?usp=sharing")),
    ],
  ),
  SubjectLinks(
    name: "Transforms And Boundary Value Problems",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/file/d/1O_CkYcsg0D9KvtmfhhesiL7THvGDj97-/view")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/file/d/1TRE8VcKrEwk9qGuYmFo67qA_zKPVqszm/view")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/file/d/1CMbmUPg0kfEC171Ui9rtHo6R3QaKsXEO/view")),
      UnitLink(title: "Unit 4", url: Uri.parse("https://drive.google.com/file/d/1avTrCbxJx72JIQRFKj78z3kdSI29h-jn/view")),
      UnitLink(title: "Unit 5", url: Uri.parse("https://drive.google.com/file/d/1KnSMLGJSxdfIsFNz3HfQHOZll4TRyyR2/view")),
    ],
  ),
  SubjectLinks(
    name: "Advanced Programming Practice",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/file/d/1bOs71WjawMUCikoaxpU1r5DLtjDIPTXg/view?usp=drive_link")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://docs.google.com/document/d/1XjnePeIsThZetrPK_Wf54BdPc6cM8R0c/edit?usp=drive_link&ouid=114671979328522500178&rtpof=true&sd=true")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://docs.google.com/document/d/18YWQCZMS3qfyPzT34NKcoWMhKj3rbjVk/edit?usp=drive_link&ouid=114671979328522500178&rtpof=true&sd=true")),
      UnitLink(title: "Unit 4", url: Uri.parse("https://drive.google.com/file/d/1b_VHbdQWsnftWvaj-InEn_vcd8YHXjvA/view?usp=drive_link")),
      UnitLink(title: "Unit 5", url: Uri.parse("https://drive.google.com/file/d/1VUBFf_8qb4ZL1PV1QslVsUUpYBmC3IO4/view?usp=drive_link")),
    ],
  ),
  SubjectLinks(
    name: "Design Thinking And Methodology",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/dtm_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/dtm_u2")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/dtm_u3")),
      UnitLink(title: "Unit 4", url: Uri.parse("https://drive.google.com/dtm_u4")),
    ],
  ),
  SubjectLinks(
    name: "Digital Logic Design",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/dld_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/dld_u2")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/dld_u3")),
      UnitLink(title: "Unit 4", url: Uri.parse("https://drive.google.com/dld_u4")),
    ],
  ),
  SubjectLinks(
    name: "Solid State Devices",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/ssd_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/ssd_u2")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/ssd_u3")),
    ],
  ),
  SubjectLinks(
    name: "Biochemistry",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/biochem_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/biochem_u2")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/biochem_u3")),
    ],
  ),
  SubjectLinks(
    name: "Electromagnetic Theory And Interference",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/emt_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/emt_u2")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/emt_u3")),
    ],
  ),
  SubjectLinks(
    name: "Basic Chemical Engineering",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/bce_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/bce_u2")),
    ],
  ),
  SubjectLinks(
    name: "Bioprocess Principles",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/bp_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/bp_u2")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/bp_u3")),
    ],
  ),
  SubjectLinks(
    name: "Genetics And Cytogenetics",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/gen_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/gen_u2")),
    ],
  ),
  SubjectLinks(
    name: "Microbiology",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/micro_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/micro_u2")),
      UnitLink(title: "Unit 3", url: Uri.parse("https://drive.google.com/micro_u3")),
    ],
  ),
  SubjectLinks(
    name: "Social Engineering",
    units: [
      UnitLink(title: "Unit 1", url: Uri.parse("https://drive.google.com/se_u1")),
      UnitLink(title: "Unit 2", url: Uri.parse("https://drive.google.com/se_u2")),
    ],
  ),
];
