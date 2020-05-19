from app import db

# Create classes for the following tables, you can change these if you wish.

class User(db.Model):
  '''
  `user_id` INTEGER PRIMARY KEY,
  `username` TEXT, NOT NULL,
  `password` TEXT, NOT NULL,
  `role` TEXT, NOT NULL,
  `prog_id` INTEGER, DEFAULT NULL
  '''


class Minor(db.Model):
  '''
  `minor_id` INTEGER PRIMARY KEY
  `minor_name` TEXT NOT NULL
  `max_students` INTEGER NOT NULL
  '''


class Programme(db.Model):
  '''
  `prog_id` INTEGER PRIMARY KEY NOT NULL,
  `programme_name` varchar(50) NOT NULL
  '''


class Selection(db.Model):
  '''
  `selection_id` INTEGER PRIMARY KEY
  `user_id` INTEGER, NOT NULL, FOREIGN KEY REFERENCES `user_id` in user TABLE
  `minor_choice_1` INTEGER, NOT NULL, FOREIGN KEY REFERENCES `minor_id` in minor TABLE
  `minor_choice_2` INTEGER, NOT NULL, FOREIGN KEY REFERENCES `minor_id` in minor TABLE
  '''
