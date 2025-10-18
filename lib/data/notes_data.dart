import '../models/link_item.dart';

// Semesters data: each entry in the outer list is a semester (0 -> Sem1, 1 -> Sem2, 2 -> Sem3)
// Each semester is a list of SubjectLinks so subjects don't mix between semesters.

final semestersData = <List<SubjectLinks>>[
  // Semester 1: subjects from the attachment (12 subjects)
  [
    SubjectLinks(
      name: 'Calculus And Linear Algebra',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/file/d/1DJtRi7pVqRQB8FvzBpEn-XxKiUImk_P4/view'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/file/d/1E_y0KGXHnM7wq99LZ2BW22apdPgh4JFs/view'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/file/d/17HL_D-UAMs-eXIbqrce2e3d1mdRssFRx/view'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://drive.google.com/file/d/1tTdm1YAba-j7LLImmMEQT3alPyx8AVyy/view'),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse('https://drive.google.com/file/d/1HnBhHeH8Dj5zQhIUOiEP_rB1KluYuRof/view'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Chemistry',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/file/d/1lJeBOTA8aIg0i_N_VMC3deuheeMzydnO/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/file/d/17Jnf6EAG2mQ7g3ycy0Etlv-m-K_varkf/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/file/d/1QMNdvgs_kPZr7kuYwxecssyT7_ARqcaW/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://drive.google.com/file/d/1PtP9d0NBJppe7j2Nl92y8y3YmLMs4f06/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse('https://drive.google.com/file/d/1AJTfdAJUtR6G1QV0pyfTwsaDXV7VljOc/view?usp=sharing'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Philosophy Of Engineering',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem1_philosophy_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Introduction To Computational Biology',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://docs.google.com/presentation/d/1zopCk8EoDtZBXh9_G89OnRf7SUdNr-1a/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://docs.google.com/presentation/d/1SeGn6mXKj8Bv-A7CjvcPLrK1HXnNtYE_/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://docs.google.com/presentation/d/1EcD_f4gBLa0fNrPIJBe2H1bBGlwHcIX1/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://docs.google.com/presentation/d/1pr7xg86aZHgpow4uSJRb0MlBvJjQVO2l/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse('https://docs.google.com/presentation/d/1BmvWvX-YqjV2Yg4Xnc72p4IZht3rGyyS/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Programming For Problem Solving',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/file/d/1KqqoEE-5RXiHm3t95BMALi9Kruy3WLOf/view'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/file/d/1x-lUcND7yG2oR1eocr0mACIK5XFi3e1w/view'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/file/d/1O4KU-reiX7tN_JYvlSJLUL-FqWDoOuP5/view'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://drive.google.com/file/d/1_59IncwfxLXzFiLOz2fuUMI8FMAOmX7l/view'),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse('https://drive.google.com/file/d/1Nh6O5Ll25NPJZMEvpOyudtGV50mquHTm/view'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Fundamental Of Economics (FOE)',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem1_foe_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Biomedical Sensors',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem1_biosensors_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Foreign Languages',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem1_languages_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Cell Biology',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem1_cellbio_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Microbiology',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse(
            'https://drive.google.com/sem1_microbiology_u${u + 1}',
          ),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Physical And Analytical Chemistry',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem1_physchem_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Biochemistry',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem1_biochem_u${u + 1}'),
        ),
      ),
    ),
  ],

  // Semester 2: subjects from the attachment (9 subjects)
  [
    SubjectLinks(
      name: 'Advanced Calculus And Complex Analysis',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/file/d/1z2m7ZNO0cH8dRrkm3qc68znvGKlFfXNa/view'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/file/d/1aV6mHdDvzpUn0MrlKtzHcIRl1SD4hMNr/view'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/file/d/1zm_BIkK_b-ratd7-gWm2HnLUltkYko1v/view'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://drive.google.com/file/d/1rznJ0psYcL1DcB7fgaHEp8pJzheycME0/view'),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse('https://drive.google.com/file/d/18507OKQp7hj0WaOFR7lF18YLP204d_Ks/view'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Electrical And Electronics Engineering',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://docs.google.com/presentation/d/1kZ2tfLkxR9we8XUTizxO5eygPotxhQhm/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://docs.google.com/presentation/d/1R9X53gbnOtFWZXqCetU1X4xSH5b6L-Wn/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://docs.google.com/presentation/d/1_vs7f5rUrQTzKisHokbwpnKYQAguKWPL/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://docs.google.com/presentation/d/14_86xbTZKKAw8Hos7QFkEAb03fANZjDd/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse('https://docs.google.com/presentation/d/1IGRd825QPTfL8QG8lp4IdfPfabLV4kFb/edit?usp=sharing&ouid=108542009820948722507&rtpof=true&sd=true'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Semiconductor Physics And Computational Methods',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/file/d/1Y-iC4lIa3Kz6NrudEf_vIrKbcYyd7hvW/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/file/d/11CNi0d-4i4Ux-SlJB1dXKiYL8J7AwI3I/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/file/d/1fgGrvQgdd9sbj1Cm2CYT2C-ooT2b4-f8/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://drive.google.com/file/d/1djN5d7wNDufuCk45gr0ipc0KijeoTEHM/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse('https://drive.google.com/file/d/1pUsqgyjrQjWcTz14qCoWVC4Mok-9AJN_/view?usp=sharing'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Physics-Mechanics',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem2_physicsmech_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Object Oriented Design And Programming',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/file/d/1sE3jfWzKCbBX0vBLES6c9bqsV7w5655y/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/file/d/1l4ZS7K3xSsM8A8P75N__MhDCeUx490Ef/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/file/d/1yDBHwWC5yW9ing7kqWk2y6qjfm4uv-aV/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://drive.google.com/file/d/1PLX0ouTr8wpP5lMRkBODjqFJ3XD21Ds3/view?usp=sharing'),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse('https://drive.google.com/file/d/1Mgd3plaswyggRHuMTonoaglsznHNeGzy/view?usp=sharing'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Communicative English',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem2_emphys_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Electromagnetic Physics',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem2_emphys_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Engineering Mechanics',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem2_engmech_u${u + 1}'),
        ),
      ),
    ),
    SubjectLinks(
      name: 'Electronic System And PCB Design',
      units: List.generate(
        5,
        (u) => UnitLink(
          title: 'Unit ${u + 1}',
          url: Uri.parse('https://drive.google.com/sem2_pcb_u${u + 1}'),
        ),
      ),
    ),
  ],

  // Semester 3: restore the original full subject list for sem3
  [
    SubjectLinks(
      name: 'Data Structures And Algorithm',
      units: [
        UnitLink(
          title: 'Unit 1 – Basics',
          url: Uri.parse(
            'https://drive.google.com/file/d/19-Y6eQZud2eR1ndxX7-ej7QRH_b6Wrf9/view',
          ),
        ),
        UnitLink(
          title: 'Unit 2 – Stacks & Queues',
          url: Uri.parse(
            'https://drive.google.com/file/d/12xHo29Rf8qU-LKQQ1pS1oMI56DYAh2fd/view',
          ),
        ),
        UnitLink(
          title: 'Unit 3 – Trees',
          url: Uri.parse(
            'https://drive.google.com/drive/folders/1sL_eU-2m-k0Vyfqlf5hfX0lN8KLPdvQC?usp=sharing',
          ),
        ),
        UnitLink(
          title: 'Unit 4 – Graphs',
          url: Uri.parse(
            'https://drive.google.com/drive/folders/1XGcOCsJy6077blhNYX7VMRuRqyKnh6e-?usp=sharing',
          ),
        ),
        UnitLink(
          title: 'Unit 5 – Sorting & Searching',
          url: Uri.parse(
            'https://drive.google.com/drive/folders/14XhSNSDjNZuhzhzkZX8odbbBNDydYMuO?usp=sharing',
          ),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Computer Organization And Architecture',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse(
            'https://drive.google.com/file/d/1DZoMeHSan_5ON9FdpeqIsEVMuSKWnrdm/view',
          ),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse(
            'https://drive.google.com/file/d/1XyPBUN-UKWaCr1fVzunoSLQuDeWUqSQJ/view',
          ),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse(
            'https://drive.google.com/file/d/1dGAix8oFN0TWNIhaTGa54miTFVwk3bqU/view',
          ),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse(
            'https://drive.google.com/file/d/1l2THbWr0dLIxf-3ZZWw8dZu4EBEm5hs6/view',
          ),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse(
            'https://drive.google.com/file/d/1LtoEpjOfG033Q3nxQJrpgkwd5ELdIbNB/view',
          ),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Operating Systems',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse(
            'https://drive.google.com/drive/folders/1IQjyEolstrOXBvVMMhEoQBJW38FkhJSp?usp=sharing',
          ),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse(
            'https://drive.google.com/drive/folders/12PGy2h2fOSkLbdu1022F7uybPg80Y8br?usp=sharing',
          ),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse(
            'https://drive.google.com/drive/folders/1RyvthQwGko5D4sCD5FZz8RA3nbJZ3Y85?usp=sharing',
          ),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse(
            'https://drive.google.com/drive/folders/1tdUNkg3OteZoNSZI4nMDjzHBpDISu8HK?usp=sharing',
          ),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse(
            'https://drive.google.com/drive/folders/1FK6xXPYDgICQ7IeDt9KmnwgoAYizI8Ef?usp=sharing',
          ),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Transforms And Boundary Value Problems',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse(
            'https://drive.google.com/file/d/1O_CkYcsg0D9KvtmfhhesiL7THvGDj97-/view',
          ),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse(
            'https://drive.google.com/file/d/1TRE8VcKrEwk9qGuYmFo67qA_zKPVqszm/view',
          ),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse(
            'https://drive.google.com/file/d/1CMbmUPg0kfEC171Ui9rtHo6R3QaKsXEO/view',
          ),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse(
            'https://drive.google.com/file/d/1avTrCbxJx72JIQRFKj78z3kdSI29h-jn/view',
          ),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse(
            'https://drive.google.com/file/d/1KnSMLGJSxdfIsFNz3HfQHOZll4TRyyR2/view',
          ),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Advanced Programming Practice',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse(
            'https://drive.google.com/file/d/1bOs71WjawMUCikoaxpU1r5DLtjDIPTXg/view?usp=drive_link',
          ),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse(
            'https://docs.google.com/document/d/1XjnePeIsThZetrPK_Wf54BdPc6cM8R0c/edit?usp=drive_link&ouid=114671979328522500178&rtpof=true&sd=true',
          ),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse(
            'https://docs.google.com/document/d/18YWQCZMS3qfyPzT34NKcoWMhKj3rbjVk/edit?usp=drive_link&ouid=114671979328522500178&rtpof=true&sd=true',
          ),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse(
            'https://drive.google.com/file/d/1b_VHbdQWsnftWvaj-InEn_vcd8YHXjvA/view?usp=drive_link',
          ),
        ),
        UnitLink(
          title: 'Unit 5',
          url: Uri.parse(
            'https://drive.google.com/file/d/1VUBFf_8qb4ZL1PV1QslVsUUpYBmC3IO4/view?usp=drive_link',
          ),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Design Thinking And Methodology',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/dtm_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/dtm_u2'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/dtm_u3'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://drive.google.com/dtm_u4'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Digital Logic Design',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/dld_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/dld_u2'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/dld_u3'),
        ),
        UnitLink(
          title: 'Unit 4',
          url: Uri.parse('https://drive.google.com/dld_u4'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Solid State Devices',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/ssd_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/ssd_u2'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/ssd_u3'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Biochemistry',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/biochem_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/biochem_u2'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/biochem_u3'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Electromagnetic Theory And Interference',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/emt_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/emt_u2'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/emt_u3'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Basic Chemical Engineering',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/bce_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/bce_u2'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Bioprocess Principles',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/bp_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/bp_u2'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/bp_u3'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Genetics And Cytogenetics',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/gen_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/gen_u2'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Microbiology',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/micro_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/micro_u2'),
        ),
        UnitLink(
          title: 'Unit 3',
          url: Uri.parse('https://drive.google.com/micro_u3'),
        ),
      ],
    ),
    SubjectLinks(
      name: 'Social Engineering',
      units: [
        UnitLink(
          title: 'Unit 1',
          url: Uri.parse('https://drive.google.com/se_u1'),
        ),
        UnitLink(
          title: 'Unit 2',
          url: Uri.parse('https://drive.google.com/se_u2'),
        ),
      ],
    ),
  ],
];
