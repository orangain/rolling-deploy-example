import os

from bottle import route, default_app
import requests


@route('/')
def index():
    r = requests.get('http://' + os.environ.get('ES_HOSTS'))
    d = r.json()
    d['app_version'] = 1
    return d


application = default_app()
