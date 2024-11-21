from flask import Flask, jsonify, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re

app = Flask(__name__)
   
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Ucu.2024'
app.config['MYSQL_DB'] = 'obligatoriobd1'
mysql = MySQL(app)

"""
RUTAS
"""

@app.route('/alumnos', methods=['GET'])
def getalumnos():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM alumnos;")
    info = cur.fetchall()
    return jsonify({"response": info})

@app.route('/alumnos/delete', methods=['GET'])
def getalumnos():
    cur = mysql.connection.cursor()
    cur.execute("DELETE * FROM alumnos WHERE ;")
    info = cur.fetchall()
    return jsonify({"response": info})

if __name__ == '__main__':
    app.run(host="localhost", port = 3000, debug = True)
 