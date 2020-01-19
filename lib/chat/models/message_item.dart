class MessageItem implements Comparable<MessageItem> {
  /// The message ID
  final String id;

  /// The [DateTime] when the message arrived
  final DateTime date;

  /// The peer alias
  final String peer;

  /// Whether this message is from myself
  final bool isMe;

  /// The message text contents
  final String text;

  /// Whether the message was delivered successfully
  final bool delivered;

  /// True if message above is the same user
  bool aboveIsSame;

  /// True if message below is the same user
  bool belowIsSame;

  MessageItem(
    this.id,
    this.date,
    this.peer,
    this.text, {
    this.isMe = false,
    this.delivered = false,
    this.aboveIsSame = false,
    this.belowIsSame = false,
  });

  MessageItem copyWith({
    String id,
    String from,
    String text,
    bool delivered,
    bool aboveIsSame,
    bool belowIsSame,
  }) {
    return MessageItem(
      id ?? this.id,
      date,
      peer,
      text ?? this.text,
      isMe: isMe,
      delivered: delivered ?? this.delivered,
      aboveIsSame: aboveIsSame ?? this.aboveIsSame,
      belowIsSame: belowIsSame ?? this.belowIsSame,
    );
  }

  @override
  int compareTo(MessageItem other) => date.compareTo(other.date);
}