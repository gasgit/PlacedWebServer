import sys
from flask import Flask, render_template, request, jsonify, url_for
from flask.ext.sqlalchemy import SQLAlchemy
from sqlalchemy import true
import os
from werkzeug.utils import redirect

app = Flask(__name__)

db = SQLAlchemy(app)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqldb://root:dbmgt@localhost/gapp2'

# Place class model for database 
class Place(db.Model):
    __tablename__ = 'places'
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    place = db.Column(db.String(100))
    comments = db.Column(db.Text)
    lat = db.Column(db.Float(6))
    lng = db.Column(db.Float(6))
    photo = db.Column(db.String(100))
    posted = db.Column(db.DATETIME)

# Report class model for database 
class Report(db.Model):
    __tablename__ = 'reports'
    rid = db.Column(db.Integer, primary_key=True)
    id = db.Column(db.Integer)
    comments = db.Column(db.Text)
    photo = db.Column(db.String(100))
    posted = db.Column(db.DATETIME)


# User class model for database 
class User(db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(20))
    password = db.Column(db.String(10))
    created = db.Column(db.DateTime)

# home page
@app.route('/home/')
def home():
    return render_template('home.html')


# about page
@app.route('/about/')
def about():
    return render_template('about.html')

# results from  all places table
@app.route('/places/')
def places():
    results = Place.query.all()

    return render_template('places.html', results=results)
    
# results from  all places table
@app.route('/reported/')
def reported():
    results = Report.query.all()

    return render_template('reports.html', results=results)


# receives json string with base64_image_str and name. base64 decoded and both written to img folder
@app.route('/postImage/', methods=['GET', 'POST'])
def postImage():
    if request.headers['Content-Type'] == 'application/json':
        photo = request.json["photoPost"]  # A field from the json 
        image = request.json["imagePost"].decode("base64")  # The data image
        json = request.json
    filename = open(os.path.join('/home/glen/myFlaskWebServer/app/static/img/', photo), 'w')
    filename.write(image)
    filename.close()
    sys.stdout = filename
    return jsonify(json)


# receives post from device with devices current lat, lng , geofence and limit
@app.route('/postLatLng/', methods=['POST','GET'])
def post():
    global var_query
    if request.method == 'POST':
        if request.headers['Content-Type'] == 'application/json':
            var_query = request.json['data']
            print (var_query)
    return (var_query)


# receives get request from device, takes global query from /postLatLng
@app.route('/getPlaces/', methods=['GET'])
def getPlaces():
    global var_query
    results = Place.query.from_statement(var_query).all()
    json_results = []
    for result in results:
        d = {'id': result.id,
             'title': result.title,
             'place': result.place,
             'comments': result.comments,
             'lat': result.lat,
             'lng': result.lng,
             'photo': result.photo,
             'posted': result.posted}
        json_results.append(d)
    return jsonify(places=json_results)

    
 # prints json to webpage direct from database   
@app.route('/getPlacesWeb/', methods=['GET'])
def getPlacesWeb():
  if request.method == 'GET':
    #results = Place.query.limit(6).offset(0).all()
    results = Place.query.all()
    json_results = []
    for result in results:
      d = {'id': result.id,
           'title': result.title,
           'place': result.place,
           'comments': result.comments,
           'lat': result.lat,
           'lng': result.lng,
           'photo': result.photo}
      json_results.append(d)

    return jsonify(places=json_results) 


#recieves post json string from device, parses back into Place model and inserted to db 
@app.route('/postPlaces/', methods=['GET', 'POST'])
def postPlaces():
    if request.headers['Content-Type'] == 'application/json':
        if request.method == 'POST':
            title = request.json['title']
            place = request.json['place']
            comments = request.json['comments']
            lat = request.json['lat']
            lng = request.json['lng']
            photo = request.json['photo']
            if title is None or place is None or comments is None or lat is None or lng is None or photo is None:
                return jsonify({"message": "Error."}), 400
            db.session.add(Place(**request.json))
            db.session.commit()
            return jsonify({'message': 'Attribute Created successfully'}), 200


 # recieves post json string from device, parses back into Place model and inserted to db
@app.route('/postReport/', methods=['GET', 'POST'])
def postReport():
    if request.headers['Content-Type'] == 'application/json':
        if request.method == 'POST':
            id = request.json['id']
            if id is None:
                return jsonify({"message": "Error."}), 400
            db.session.add(Report(**request.json))
            db.session.commit()
            return jsonify({'message': 'Attribute Created successfully'}), 200


# login page
@app.route('/', methods=['POST', 'GET'])
def login():
    error = None
    results = User.query.limit(6).offset(0).all()

    if request.method == 'POST':
        POST_USERNAME = str(request.form['name'])
        POST_PASSWORD = str(request.form['password'])

        for result in results:
            if POST_USERNAME != result.name or POST_PASSWORD != result.password:
                print "Unsuccessful"
                error = 'Invalid Credentials. Please try again.'
            else:
                print "Successful"
                return redirect(url_for('home'))

    return render_template('login.html', error=error)



if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=true)
