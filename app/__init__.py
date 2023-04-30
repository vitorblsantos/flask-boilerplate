""" App """

from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
  """render index"""
  return render_template('index.html', title='index')
