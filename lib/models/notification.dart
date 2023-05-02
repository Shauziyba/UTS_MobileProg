class Notification {
  final String imgUrl;
  final String post;
  final int reactions;
  final int comments;
  final int hours;
  final bool seen;

  const Notification({
    required this.imgUrl,
    required this.post,
    required this.reactions,
    required this.comments,
    required this.hours,
    required this.seen
  });
}
