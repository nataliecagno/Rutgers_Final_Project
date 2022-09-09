from flask import Flask, request, jsonify, render_template
from joblib import load

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html") 
    #'<a href = "./predict?text=exampletext"> ./predict?text=exampletext</a>'


@app.route("/predict", methods = ['POST'])
def predict():
    """Takes a POST request with a key of \"text\" and the text to be classified."""
    age = request.form.get("age")
    sex = request.form.get("sex")
    breed = request.form.get("breed")
    age= int(age)
    sex=int(sex)
    breed= int(breed)
    

    # get data in correct ofrmat and then do your predict and stuff
    classifier_1 = load("classifier_1.pkl")
    prediction = classifier_1.predict([[age, sex, breed]])[0]
    if prediction == int(prediction)== 0 :
        return render_template("index.html", prediction="Unavailable")
    else:
        return render_template("index.html", prediction="Available")


if __name__ == "__main__":
    app.run(debug=True)
    

    
    
    
    
    
    
    
