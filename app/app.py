from flask import Flask, render_template, request, jsonify
import mysql.connector

app = Flask(__name__)

# Configurações do banco de dados
db_config = {
    'user': 'pythonConnector',
    'password': 'Python@connect123',
    'host': 'database',
    'database': 'datasheet'
}

# Conexão ao banco de dados
def get_db_connection():
    return mysql.connector.connect(**db_config)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/data')
def data():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    
    query = "SELECT * FROM access_point"
    cursor.execute(query)
    
    rows = cursor.fetchall()
    
    cursor.close()
    conn.close()
    
    return jsonify(rows)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
