from flask import Blueprint

main = Blueprint('main', __name__)

@main.route('/')
def index():
    return "¡Hola, Mundo!"

import mysql.connector

def get_db_connection():
    return mysql.connector.connect(
        host="mysql:5.7",  # Nombre del servicio de MySQL en docker-compose
        user="root",
        password="inicio1234",
        database="bd1234"
    )

@main.route('/usuarios')
def usuarios():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM usuarios')
    usuarios = cursor.fetchall()
    cursor.close()
    conn.close()
    return str(usuarios)
