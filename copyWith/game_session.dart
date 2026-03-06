class GameSession {
  final String playerName;
  final int score;
  final int lives;
  final bool isGameOver;

  GameSession({
    required this.playerName,
    required this.score,
    required this.lives,
    required this.isGameOver,
  });

  GameSession copyWith({
    String? playerName,
    int? score,
    int? lives,
    bool? isGameOver,
  }) {
    return GameSession(
      playerName: playerName ?? this.playerName,
      score: score ?? this.score,
      lives: lives ?? this.lives,
      isGameOver: isGameOver ?? this.isGameOver,
    );
  }
}

void main() {
  GameSession session = GameSession(
    playerName: "Gohan",
    score: 1000,
    lives: 3,
    isGameOver: false,
  );
  GameSession newSession = session.copyWith(score: 1100, lives: 2, isGameOver: true);
}
