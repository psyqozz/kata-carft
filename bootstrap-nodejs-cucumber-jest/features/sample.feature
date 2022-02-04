Feature: American Ten-Pin Bowling 
Play a classic game

@Game
Scenario Outline: Simple game of bowling 
Given the player score '<rolls>'
When we finish the game 
Then the total is <score>

Examples:
| rolls | score |
| 34,9-,22,--,15,52,--,11,33,43 | 48 |

@Game
Scenario Outline: Simple game of bowling with spare 
Given the player score '<rolls>'
When we finish the game
And each spare turn was increase by the first roll of the next turn
Then the total is <score>

Examples:
| rolls | score |
| 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/1 | 141 |

@Game
Scenario Outline: Simple game of bowling with strike 
Given score board
And the player score <rolls>
And each strike turn was increase by the next two rolls
Then the total is <score>

Examples:
|rolls | score |
| X X X X X X X X X 9/0 | 267 |

@Game
Scenario Outline: Simple game of bowling with spare at the last turn  
Given ten frames with two rolls each
And the player score <rolls>
And the score of last turn is spare
And one roll was added after the last turn
And each spare turn was increase by the next roll
Then the total is <score>

Examples:
| rolls | score |
| 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/5 | 150 |

@Game
Scenario Outline: Simple game of bowling with strike at the last turn  
Given Score board
And the player score <rolls>
And the score of last turn is strike
And two rolls was added after the last turn
And each strike turn was increase by the next two rolls
Then the total is <score>

Examples:
| rolls | score |
| X X X X X X X X X X X X | 300 |