### Task 1: Extract Nouns for Classes
1. Player: Represents a player in the game. It could have attributes like the player's name and the number of lives.
  - The class will have methods to handle actions associated with players, such as answering math questions and updating their life count. 

2. MathGame: The main game class that manages the flow of the game, generates math questions, keeps track of players, and determines the winner.
  -Methods within this class will handle tasks like presenting questions to players, evaluating answers, updating scores, and declaring a winner.

3. MathQuestion: Represents a math question, including two random numbers between 1 and 20 and the correct answer.
  - Methods within this class may include generating a new question, verifying the correctness of an answer, and presenting the question to the current player


### Task 2: Write their roles
#### Player Class:
- Attributes:
  - `name`: Player's name
  - `lives`: Number of lives remaining
- Initialization:
  - Requires the player's name.
- Public Methods:
  - `initialize(name)`: Initializes a new player with the given name and default number of lives.
  - `reduce_life()`: Decreases the player's life count by 1.
  - `get_name()`: Retrieves the player's name.
  - `get_lives()`: Retrieves the current number of lives.

#### MathGame Class:
- Attributes:
  - `players`: List of Player instances
  - `current_player_index`: Index of the current player in the players list
- Initialization:
  - Requires a list of Player instances.
- Public Methods:
  - `initialize(players)`: Initializes a new game with the given players.
  - `generate_question()`: Generates a new math question.
  - `validate_answer(answer)`: Validates the answer provided by the current player.
  - `update_scores()`: Updates the scores and current player index.
  - `game_over?()`: Checks if the game is over.
  - `announce_winner()`: Announces the winner and the other player's score.
  - `start_game()`: Initiates the game loop.
- Game Loop Management:
  - The game loop can be part of the `start_game()` method. Each iteration of the loop represents a turn, alternating between players.
-Current Player Management:
  - The `current_player_index` attribute keeps track of the current player.
- User I/O:
  - This class manages game flow and interactions. It includes methods for generating questions, validating answers, and announcing results. Therefore, it contains user I/O.

#### MathQuestion Class:
- Attributes:
  - `num1`, `num2`: Randomly generated numbers for the question
  - `answer`: Correct answer
- Initialization:
  - Automatically generates random numbers and calculates the correct answer during initialization.
- Public Methods:
  - `generate_question()`: Generates a new question.
  - `check_answer(player_answer)`: Checks if the provided answer is correct.
  - `get_question()`: Retrieves the current question.
- User I/O:
  - This class does not directly involve user input or output. It is responsible for the logic related to generating and validating math questions.