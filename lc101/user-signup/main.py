from flask import Flask, request, redirect, render_template
import cgi
import os
import jinja2

template_dir = os.path.join(os.path.dirname(__file__), 'templates')
jinja_env = jinja2.Environment(loader = jinja2.FileSystemLoader(template_dir), 
autoescape=True)


app = Flask (__name__)
app.config['DEBUG'] = True

username_error = ''
password_error = ''
verify_password_error = ''
email_error = ''

@app.route("/")
def index():
    email = ''
    password = ''
    username_error = ''
    verify_password = ''

    return render_template('index.html', email=email, password=password, username_error=username_error, verify_password=verify_password)

@app.route('/validate-info', methods=['POST'])
def validate_info():

    username = str(request.form['username'])
    password = str(request.form['password'])
    verify_password = str(request.form['verify_password'])
    email = str(request.form['email'])

    username_error = ''
    password_error = ''
    verify_password_error = ''
    email_error = ''

    if len(username) < 3:
        username_error = 'Username must contain at least 3 characters'
   
    if len(username) > 20:
        username_error = 'Your username must be under 20 characters'
                
    if " " in username:
        username_error = 'Username may not contain spaces'
          
    if len(password) < 3:
        password_error = 'Password must be longer than 3 characters'
        
    if len(password) > 20:
        password_error = 'Your password must be under 20 characters'
        
    if " " in password:
        password_error = 'Password can not contain spaces'
        
    if password != verify_password:
        password_error = 'Passwords do not match, please try again.'

    if len(email) < 3:
        email_error = 'Invalid email address, must be longer then 3 characters'
        
    if len(email) > 20:
        email_error = 'Your email address has to be shorter then 20 characters'
        
    if " " in email:
        email_error = 'Your email can not contain spaces'

    if email != "" and "@" not in email:
        email_error = 'Invalid email address, must include a "@".'

    if email != "" and "." not in email:
        email_error = 'Invalid email address, must include a "."'

    

    if not password_error and not username_error and not email_error:
        return render_template ('welcome.html', username = username)
    else:
        return render_template('index.html', username_error= username_error, password_error=password_error, email_error = email_error)
        

app.run()