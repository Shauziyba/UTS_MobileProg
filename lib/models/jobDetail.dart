class Jobs {
  final String title;
  final String name;
  final String location;
  final String date;
  final int application;
  final String jobProfileUrl;
  const Jobs(
      {required this.jobProfileUrl,
      required this.title,
      required this.name,
      required this.application,
      required this.date,
      required this.location});
}
