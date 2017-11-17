source activate flask-env
python
cd lc101
cd flicklist-flask/
git checkout walkthrough6
git commit -- "class stuff"
git commit -m "class stuff"
git commit -a "class stuff"
git commit . "class stuff"
git checkout walkthrough6

git checkout walkthrough6
git add .
git commit -m 
git commit -a
git checkout walkthrough6
git branch -a
git checkout walkthrough6a
code .
code main.py
code main.py
source activate flicklist-flask
source activate hello-flask
python
cd lc101
cd flicklist-flask/
source activate flask-env
python
cd lc101
cd flicklist-flask/
source activate flask-env
python
cd lc101
cd user-signup/
source activate flask-env
python main.py
python main.py
python main.py
cd lc101
cd flicklist-flask/
git checkout studio6
source activate flask-env
python
cd lc101
cd flicklist-flask/
git checkout studio6
source activate flask-env
python main.py
code main.py
python main.py
cd lc101
cd flicklist-flask/
source activate flaskenv
source activate flask-env
git checkout studio6
git checkout studio7
git commit -a "All"
git commit -c "All"
git commit -c 
git commit -a
git checkout studio7
code main.py
git checkout studio6
code main.py
python
cd lc101
cd flicklist-flask/
source activate flask-env
git checkout studio7
code main.py
python
cd lc101
cd flicklist-flask/
source activate flask-env
main.py
code main.py
python
python main.py
python main.py
cd lc101
mkdir build-a-blog
cd build-a-blog
git remote add origin https://github.com/jasmaneb/build-a-blog.git
git remote -v
git remote rm origin
git remote add origin https://github.com/jasmaneb/build-a-blog.git
git remote -v
git pull origin master
ls
git status
git status
git add .
git status
git add .
git commit - a
git commit --
git add a
git commit -a
git status
git add .
git add -a
git add --all
git status
git pull origin master
git remote -v
git pull origin master
cd lc101
cd build-a-blog/
git remote -v
git remote rm origin
git remote add origin https://github.com/jasmaneb/build-a-blog.git
git remote -v
git pull origin master
git pull origin master
git pull origin master --allow-unrelated-histories
git pull origin master
source activate flask-env
conda list
conda install pymysql
cd lc101
cd build-a-blog/
ls
source activate flask-env
main.py
code main.py
git remote -v
git pull origin master
source deactivate flask-env
git pull origin master
source activate flask-env
source activate flask-env
cd lc101
cd flicklist-flask/
..
``
cd lc101
cd build-a-blog/
source activate flask-env
git pull origin master
git status
git remote -v
git pull origin master
git pull origin master
source deactivate flask-env
git remote add from flask import Flask, request, redirect, render_template
from flask_sqlalchemy import SQLAlchemy
app = Flask(__name__)
app.config['DEBUG'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://get-it-done:beproductive@localhost:8889/get-it-done'
app.config['SQLALCHEMY_ECHO'] = True
db = SQLAlchemy(app)
class Task(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(120))
    completed = db.Column(db.Boolean)
    def __init__(self, name):
        self.name = name
        self.completed = False
@app.route('/', methods=['POST', 'GET'])
def index():
    if request.method == 'POST':;         task_name = request.form['task'];         new_task = Task(task_name)
        db.session.add(new_task)
        db.session.commit()     tasks = Task.query.filter_by(completed=False).all()
    completed_tasks = Task.query.filter_by(completed=True).all()
    return render_template('todos.html',title="Get It Done!", 
        tasks=tasks, completed_tasks=completed_tasks)
@app.route('/delete-task', methods=['POST'])
def delete_task():
    task_id = int(request.form['task-id'])
    task = Task.query.get(task_id)
    task.completed = True
    db.session.add(task)
    db.session.commit()     return redirect('/')
if __name__ == '__main__':
cd lc101
cd build-a-blog/
source activate flask-env
code main.py
cd lc101
cd build-a-blog/
source activate flask-env
code main.py
python
cd lc101
cd build-a-blog/
source activate flask-env
code main.py
python main.py
cd lc101
cd build-a-blog/
source activate flask-env
python main.py
python
cd lc101
cd build-a-blog/
git init
code main.py
source activate flask-env
python
cd lc101
cd build
cd build-a-blog/
source activate flask-env
code python.main
python
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
python main.py
cd lc101
cd build-a-blog/
cd lc101
cd build-a-blog/
source activate flask-env
python main.py
code main.py
cd lc101
cd build-a-blog/
source activate flask-env
python main.py
cd lc101
cd flicklist-flask/
git status
git add .
git status
git commit -a "stuff"
git commit -a 
git status
git checkout studio8
git pull origin studio
git pull origin studio8
code main.py
source activate hello-flask
python main.py
python main.py
python main.py
python main.py
git pull origin studio8
code main.py
python
cd lc101
cd flicklist-flask/
source activate flask-env
cd lc101
cd build-a-blog/
commit -a
source activate flaskenv
source activate flask-env
git commit -m
git commit - a "Finished"
git commit -a "Finished"
git commit -all "Finished"
git commit --all "Finished"
git commit --all
git add .
git commit --all
git push
git push origin master
git push origin master
git remote -v
git remote add origin https://github.com/jasmaneb/build-a-blog.git
git push origin master
git remote -v
git push origin 
git push --set-upstream origin master
git remote -v
git push origin master
cd lc101
cd build
cd build-a-blog/
source activate flask-env
code main.py
git push
git push --set-upstream origin master
fit push --help
git push --help
git push --all
git fetch
git push --set-upstream origin master
git tag base master
git rebase -i master
git push --force-with-lease=master:base master:Master
git rebase -i master "commit"
git status
git commit -amend
git commit --amend
git push --all
git status
git commit --amend
git sttus
git status
git add .
git commit -all
git commit --all
git push --all
git switch master
git getch
git fetch
git tag base master
git rebase -i master
git rebase --abort
git add .
git committ --all
git commit --all
git status
git push origin master
git pull
git pull remote branch
cd lc101
mkdir blogz
cd blogz
git init
git commit -m "first commit"
git remote add origin https://github.com/jasmaneb/new-blogz.git
git push -u origin master
git remote -v
cd build-a-blog
``
~~
..
cd lc101
cd build-a-blog/
code main.py
git push https://github.com/jasmaneb/new-blogz.git
cd ..
git clone https://github.com/jasmaneb/new-blogz.git
cd blogz
source activate flask-env
code main.py
git pull origin master
code main.py
code main.py
git pull origin master
code main.py
cd..
cd..
cd ..
ls
cd new-blogz
code main.py
python
cd lc101
cd blogz
cd new-blogz/
cd ..
cd blogz
code main.py
source activate flask-env
python
cd lc101
cd blogz
python main.py
source activate flask-env
python main.py
cd lc1101
cd lc101
cd blogz/
source activate
source activate flask-env
python main.py
python main.py
python main.py
python main.py
python
python main.py
source deactivate flask-env
cd lc101
cd blogz/
source activate flask-env
code main.py
python main.py
python 
cd lc101
cd blogz
source activate flask-env
python
cd lc101
cd blogz/
source activate flask-env
python main.py
python 
python main.py
python
cd lc101
cd blogz/
source activate flask-env
python
cd lc101
cd blogz/
source activate flask-env
python
cd lc101
cd blogz/
source activate flask-env
python 
python main.py
python
cd lc101
cd blogz/
source activate flask-env
python
cd lc101
cd blogz/
python
source activate flask-env
python
python main.py
python main.py
python main.py
python main.py
cd lc101
cd blogz/
source activate flask-env
python main.py
python main.py
python main.py
python main.py
python
cd lc101
cd blogz/
source activate flask-env
python
python main.py
python main.py
git status
git add .
git status
git commit -m "Final Copy"
git push
