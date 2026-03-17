enum Size {
  medium, //normal size text
  bold, //only bold text
  boldMedium, //bold with medium
  boldLarge, //bold with large
  extraLarge //extra large
}

enum Align {
  left, //ESC_ALIGN_LEFT
  center, //ESC_ALIGN_CENTER
  right, //ESC_ALIGN_RIGHT
}

extension PrintSize on Size {
  int get val => switch (this) {
        Size.medium => 0,
        Size.bold => 1,
        Size.boldMedium => 2,
        Size.boldLarge => 3,
        Size.extraLarge => 4,
      };
}

extension PrintAlign on Align {
  int get val => switch (this) {
        Align.left => 0,
        Align.center => 1,
        Align.right => 2,
      };
}
