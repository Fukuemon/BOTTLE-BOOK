from bottle import Bottle,\
    jinja2_template as template,\
        static_file, request, redirect
from bottle import response
from utils.session import Session
#from utils.auth import Auth

app = Bottle()
sess = Session()
app_sess = sess.create_session(app)

@app.get('/static/<filename:path>')
def static(filename):
    return static_file(filename, root='./static')

@app.route('/test')
def test():
    aaa = request.query.test
    return aaa