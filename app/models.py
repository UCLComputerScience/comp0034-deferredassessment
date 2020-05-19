from app import db


# Classes that represent the tables in the iep_minors.sqlite database. You can change these if you wish.

class Minor(db.Model):
    __tablename__ = "minor"
    minor_id = db.Column(db.Integer, primary_key=True)
    minor_name = db.Column(db.Text, nullable=False)
    max_students = db.Column(db.Integer, nullable=False)


class Programme(db.Model):
    __tablename__ = "programme"
    prog_id = db.Column(db.Integer, primary_key=True)
    programme_name = db.Column(db.Text, nullable=False)


class User(db.Model):
    __tablename__ = "user"
    user_id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.Text, nullable=False)
    password = db.Column(db.Text, nullable=False)
    role = db.Column(db.Text, nullable=False)
    prog_id = db.Column(db.Integer, db.ForeignKey(Programme.prog_id), nullable=False)


class Selection(db.Model):
    __tablename__ = "selection"
    selection_id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey(User.user_id), nullable=False)
    minor_choice_1 = db.Column(db.Integer, db.ForeignKey(Minor.minor_id), nullable=False)
    minor_choice_2 = db.Column(db.Integer, db.ForeignKey(Minor.minor_id), nullable=False)
