from flask import Flask
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()


def create_app(config_class=None):
    """
    Creates an application instance to run using settings from config.py
    :return: A Flask object
    """
    app = Flask(__name__)

    # Configure app wth the settings from config.py
    app.config.from_object(config_class)

    # Initialise the database
    db.init_app(app)

    from app.models import User, Minor, Programme, Selection
    with app.app_context():
        # The following code is used where there is an existing database with records (i.e. if you use the iep_minors.sqlite in this repo)
        with app.app_context():
            db.Model.metadata.reflect(db.engine)

        # If you don't have a database with records then you all need to create the database tables by uncommenting the following lines
        # from app.models import User, Minor, Programme, Selection
        # with app.app_context():
        #     db.create_all()

    # Register Blueprints
    from app.main.routes import bp_main
    app.register_blueprint(bp_main)

    return app
