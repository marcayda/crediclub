from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def query_example():
    #Si no existe regresa None
    language = request.args.get('language')

    #Si no existe regresa error 400
    framework = request.args['framework']

    #Si no existe regresa None
    website = request.args.get('website')

    return '''
              <h1>The language value is: {}</h1>
              <h1>The framework value is: {}</h1>
              <h1>The website value is: {}'''.format(language, framework, website)