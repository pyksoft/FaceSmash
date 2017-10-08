# FaceSmash
My personal take on what was an inspiration to become Facebook

## Model
### Profile
- first_name: string
- last_name: string
- image_data: string
- bio: text
- job: string
- hobbies: string


### Vote
- winner_id: integer
- loser_id: integer


## Gems
- Shrine
- Bootstrap
- Rspec
- Annotate


## Features
### Ability to vote for a Profile
- If the person is voted, it becomes a Win (winner_id)
- If the person is not voted, it becomes a Loss (loser_id)


## Algorithm
1. Choose 2 different random profile IDs
2. Show profiles on screen
3. User votes a profile, the winning profile becomes the winner_id while the loser becomes the loser_id
4. In rankings, a winner_id is +1. A loser_id is -1.