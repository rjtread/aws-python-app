import os
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    py_version = os.popen("python --version").read()
    return render_template("index.html", py_version=py_version)