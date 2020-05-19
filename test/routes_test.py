import unittest

from flask_testing import TestCase

from app import create_app, db
from app.models import Minor, Programme


class BaseTestCase(TestCase):
    """Base test case."""

    def create_app(self):
        app = create_app('config.TestConfig')
        return app

    def setUp(self):
        # create the tables in the temporary database (in memory only, not saved to disk)
        db.create_all()

        # add test data to the temporary database
        db.session.add_all([
            Minor(minor_name='Biomechanics', max_students=50),
            Minor(minor_name='Biomedical engineering', max_students=50),
            Minor(minor_name='Connected systems', max_students=50),
            Minor(minor_name='Crime and security engineering', max_students=50),
            Minor(minor_name='Engineering & public policy', max_students=50),
            Minor(minor_name='Entrepreneurship', max_students=50),
            Minor(minor_name='Environmental engineering', max_students=50),
            Minor(minor_name='Finance & accounting', max_students=50),
            Minor(minor_name='Intelligent systems', max_students=50),
            Minor(minor_name='Management', max_students=50),
            Minor(minor_name='Manufacturing the future: regenerative medicines', max_students=50),
            Minor(minor_name='Modern applications of engineering mathematics', max_students=50),
            Minor(minor_name='Modern foreign languages', max_students=50),
            Minor(minor_name='Nanotechnology', max_students=50),
            Minor(minor_name='Ocean engineering', max_students=50),
            Minor(minor_name='Programming', max_students=50),
            Minor(minor_name='Strategic thinking in engineering & technology', max_students=50),
            Minor(minor_name='Applied chemistry and molecular engineering', max_students=50),
            Minor(minor_name='Biomechanics', max_students=50),
            Minor(minor_name='Biomedical engineering', max_students=50),
            Minor(minor_name='Connected systems', max_students=50),
            Minor(minor_name='Crime and security engineering', max_students=50),
            Minor(minor_name='Engineering & public policy', max_students=50),
            Minor(minor_name='Entrepreneurship', max_students=50),
            Minor(minor_name='Environmental engineering', max_students=50),
            Minor(minor_name='Finance & accounting', max_students=50),
            Minor(minor_name='Intelligent systems', max_students=50),
            Minor(minor_name='Management', max_students=50),
            Minor(minor_name='Manufacturing the future: regenerative medicines', max_students=50),
            Minor(minor_name='Modern applications of engineering mathematics', max_students=50),
            Minor(minor_name='Modern foreign languages', max_students=50),
            Minor(minor_name='Nanotechnology', max_students=50),
            Minor(minor_name='Ocean engineering', max_students=50),
            Minor(minor_name='Programming', max_students=50),
            Minor(minor_name='Strategic thinking in engineering & technology', max_students=50),
            Minor(minor_name='Applied chemistry and molecular engineering', max_students=50),
            Minor(minor_name='Biomechanics', max_students=50),
            Minor(minor_name='Biomedical engineering', max_students=50),
            Minor(minor_name='Connected systems', max_students=50),
            Minor(minor_name='Crime and security engineering', max_students=50),
            Minor(minor_name='Engineering & public policy', max_students=50),
            Minor(minor_name='Entrepreneurship', max_students=50),
            Minor(minor_name='Environmental engineering', max_students=50),
            Minor(minor_name='Finance & accounting', max_students=50),
            Minor(minor_name='Intelligent systems', max_students=50),
            Minor(minor_name='Management', max_students=50),
            Minor(minor_name='Manufacturing the future: regenerative medicines', max_students=50),
            Minor(minor_name='Modern applications of engineering mathematics', max_students=50),
            Minor(minor_name='Modern foreign languages', max_students=50),
            Minor(minor_name='Nanotechnology', max_students=50),
            Minor(minor_name='Ocean engineering', max_students=50),
            Minor(minor_name='Programming', max_students=50),
            Minor(minor_name='Strategic thinking in engineering & technology', max_students=50)])

        db.session.add_all([
            Programme(programme_name='BEng Engineering (Biochemical)'),
            Programme(programme_name='MEng Engineering (Biochemical)'),
            Programme(programme_name='BEng Engineering (Biomedical)'),
            Programme(programme_name='MEng Engineering (Biomedical)'),
            Programme(programme_name='BEng Engineering (Chemical)'),
            Programme(programme_name='MEng Engineering (Chemical)'),
            Programme(programme_name='BEng Engineering (Civil)'),
            Programme(programme_name='MEng Engineering (Civil)'),
            Programme(programme_name='BSc Computer Science'),
            Programme(programme_name='MEng Computer Science'),
            Programme(programme_name='BEng Engineering (Electronic and Electrical)'),
            Programme(programme_name='MEng Engineering (Electronic and Electrical)'),
            Programme(programme_name='BSc Management Science'),
            Programme(programme_name='MSci Management Science'),
            Programme(programme_name='BEng Engineering (Mechanical)'),
            Programme(programme_name='MEng Engineering (Mechanical)')
        ])

    def tearDown(self):
        # Delete the data and tables from the database
        db.session.remove()
        db.drop_all()


class TestMain(BaseTestCase):

    def test_index_page_valid(self):
        """
        GIVEN a Flask application
        WHEN the '/' home page is requested using the GET http method
        THEN check the response returns a 200 status code for a valid page
        """
        response = self.client.get('/')
        self.assertEqual(response.status_code, 200)


if __name__ == '__main__':
    unittest.main()
