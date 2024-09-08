from flask import Flask, render_template, request, redirect, url_for
import mysql.connector

app = Flask(__name__)

# Conectar ao banco de dados
def get_db_connection():
    connection = mysql.connector.connect(
        host='localhost',
        user='root',
        password='password',
        database='biblioteca'
    )
    return connection

@app.route('/')
def index():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute('SELECT * FROM livros;')
    livros = cursor.fetchall()
    print("Livros:", livros)
    cursor.close()
    conn.close()
    return render_template('index.html', livros=livros)

if __name__ == '__main__':
    app.run(debug=True)

