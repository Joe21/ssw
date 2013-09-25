Models:

User (:smoke_id, :sleep_id)
- name (string)
- authentication stuff
- has_many :smokes, :sleeps

Smoke
- quantity
- date
- belongs_to :users

Sleep
- quantity
- date
- belongs_to :users