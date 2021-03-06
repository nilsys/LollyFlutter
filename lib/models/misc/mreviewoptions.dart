enum ReviewMode { ReviewAuto, Test, ReviewManual }

class MReviewOptions {
  final isEmbedded = false;
  var mode = ReviewMode.ReviewAuto;
  var shuffled = false;
  var interval = 5;
  var groupSelected = 1;
  var groupCount = 1;
}
