from flask import Blueprint, render_template

from app.models import Programme, Minor, User, Selection

bp_main = Blueprint('main', __name__)


@bp_main.route('/', methods=["GET"])
def index():
    return render_template('index.html')
