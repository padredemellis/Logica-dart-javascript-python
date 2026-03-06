enum GameStatus { playing, won, lost }

class GameState {
  final String currentNode;
  final int score;
  final int questionsAnswered;
  final GameStatus status;

  GameState({
    required this.currentNode,
    required this.score,
    required this.questionsAnswered,
    required this.status,
  });

  GameState copyWith({
    String? currentNode,
    int? score,
    int? questionsAnswered,
    GameStatus? status,
  }) {
    return GameState(
      currentNode: currentNode ?? this.currentNode,
      score: score ?? this.score,
      questionsAnswered: questionsAnswered ?? this.questionsAnswered,
      status: status ?? this.status,
    );
  }
}

void main() {
  GameState state = GameState(
    currentNode: "1",
    score: 0,
    questionsAnswered: 0,
    status: GameStatus.playing,
  );
  GameState newState = state.copyWith(score: state.score + 100);
}
