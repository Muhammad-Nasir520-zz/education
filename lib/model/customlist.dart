class Language {
  final int id;
  final String name;
  final String languageCode;

  const Language(this.id, this.name, this.languageCode);


}

const List<Language> getLanguages = <Language>[
  Language(1,'English','assets/image.svg'),
  Language(2, 'فارسی','assets/image.svg'),
  Language(3, 'پشتو','assets/image.svg'),
];