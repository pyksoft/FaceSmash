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


### Vote (Join Table)
- win_profile_id
- lose_profile_id


## Gems
- Shrine
- Bootstrap
- Rspec
- Annotate


## Features
### Ability to vote for a Profile
- If the person is voted, it becomes a Win (win_profile_id)
- If the person is not voted, it becomes a Loss (lose_profile_id)
