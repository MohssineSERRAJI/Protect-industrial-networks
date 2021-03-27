from model_NI import myModel
from preprocessing import load_n_rows
import requests
import httplib2
import json
import logging
import string
from flask import Flask, render_template, request, redirect, jsonify, url_for, flash, send_from_directory

import os
from werkzeug.utils import secure_filename

UPLOAD_FOLDER = './uploads/'
ALLOWED_EXTENSIONS = {'txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif', 'csv'}
# from sqlalchemy import create_engine, asc, desc, \
#     func, distinct
# from sqlalchemy.orm import sessionmaker
# from sqlalchemy.ext.serializer import loads, dumps

# from database_setup import Base, Things

# Ai packages
key = os.urandom(12).hex()
app = Flask(__name__)
app.secret_key = key
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['SECRET_KEY'] = key

# load our model
my_model = myModel("prediction_model")
my_model.load_model()


def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS
# Connect to database and create database session
# engine = create_engine('sqlite:///flaskstarter.db')
# Base.metadata.bind = engine

# DBSession = sessionmaker(bind=engine)
# session = DBSession()

# Display all things


@app.route("/predict")
def predict():
    filepath = request.args.get('filename')
    test_df = load_n_rows("./model_assets/file_to_check_CNN.csv")
    legend = 'Monthly Data'
    result, nbr_attacks = my_model.predict(test_df)
    print('############################################################')
    labels = list(result.keys())
    print(filepath)
    print('############################################################')
    values = list(result.values())
    return render_template('predict.html', labels=labels,
                           values=values, legend=legend, nbr_attacks=nbr_attacks)


@app.route('/')
def showMain():
    return render_template('home.html')


@app.route('/check_network', methods=['GET', 'POST'])
def checkNetwork():
    if request.method == 'POST':
        # check if the post request has the file part
        if 'file' not in request.files:
            flash('No file part')
            return redirect(request.url)
        file = request.files['file']
        # if user does not select file, browser also
        # submit an empty part without filename
        if file.filename == '':
            flash('No selected file')
            print("No selected file")
            return redirect(request.url)
        if file and allowed_file(file.filename):
            f = request.files['file']
            filename = secure_filename(f.filename)
            file_loc_disk = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            print('############################################################')
            print(file_loc_disk)
            print('############################################################')
            file.save(file_loc_disk)
            return redirect(url_for('predict',
                                    filename=file_loc_disk))

    return render_template('ckeck-network.html')


@app.route('/uploads/<path:filename>', methods=['GET', 'POST'])
def download(filename):
    return send_from_directory(directory='uploads', filename=filename)


if __name__ == '__main__':
    #app.secret_key = 'super_secret_key'
    app.debug = True
    app.run()
