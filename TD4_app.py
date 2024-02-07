from flask import Flask, request, jsonify

app = Flask(__name__)


def insert_into_database(data):
    
   
    print("Inserting data into database:", data)


@app.route('/api/insert', methods=['POST'])
def insert_data():
    
    data = request.json.get('data')

    
    insert_into_database(data)

    
    return jsonify({'message': 'Data inserted successfully'}), 200


if __name__ == '__main__':
    app.run(port=8080)

