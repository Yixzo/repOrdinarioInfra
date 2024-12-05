from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/saludo', methods=['GET'])
def saludo():
    return jsonify({'mensaje': 'Hola Mundo 2'}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
