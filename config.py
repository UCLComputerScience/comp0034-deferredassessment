"""Flask config class."""
from os.path import dirname, abspath, join


class Config(object):
    """Set Flask base configuration"""
    SECRET_KEY = 'a_random_key'  # Please create your own secret key

    # General Config
    DEBUG = False
    TESTING = False

    # Forms config
    WTF_CSRF_SECRET_KEY = 'this-is-not-random-but-it-should-be'  # Please create your own secret key

    # Database config
    CWD = dirname(abspath(__file__))
    SQLALCHEMY_DATABASE_URI = 'sqlite:///' + join(CWD, 'iep_minors.sqlite')
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    DATABASE = join(CWD, 'iep_minors.sqlite')


class ProdConfig(Config):
    DEBUG = False
    TESTING = False


class TestConfig(Config):
    TESTING = True


class DevConfig(Config):
    DEBUG = True
