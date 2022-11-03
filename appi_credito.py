from flask import Flask, request
from flask_mysqldb import MySQL
from datetime import date

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'clientes'
 
mysql = MySQL(app)

# Definición de funciones
def calcular_rfc(nom, ap, am, fn):
    fn = fn.replace("-","")
    rfc = ap[0:2].upper() + am[0] + nom[0] + fn[2:len(fn)] 
    print(rfc)
    return rfc

def aprobar(im,nd):
    if(int(im) > 25000):
        a = "Crédito Aprobado"
        b = True
    elif (int(im) > 15000 and int(nd) < 3):
        a = "Crédito Aprobado"
        b = True
    else:
        a = "Crédito Rechazado"
        b = False
    return a,b 

def insertar(nombre,apellido_pat,apellido_mat,fecha_nac,rfc,ing_mens,num_dep,aprobado,fecha_reg):
    cursor = mysql.connection.cursor()
    cursor.execute(''' INSERT INTO clientes.clientes(nombre,apellido_pat, apellido_mat, fecha_nac, rfc, ingresos_mens, 
                    num_dep, aprobado, fecha_reg) 
                    VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s)''',(nombre, apellido_pat, apellido_mat,
                    fecha_nac,rfc, ing_mens, num_dep, aprobado,fecha_reg))
    id = mysql.connection.insert_id()
    mysql.connection.commit()
    cursor.close()
    return True, id

@app.route('/', methods=['GET','POST'])
def form_example():
    if request.method == 'POST':
        nombre = request.form.get('nombre')
        apellido_pat = request.form.get('apellido_pat')
        apellido_mat = request.form.get('apellido_mat')
        fecha_nac = request.form.get('fecha_nac')
        ing_mens = request.form.get('ing_mens')
        num_dep = request.form.get('num_dep')

        rfc = calcular_rfc(nombre, apellido_pat,apellido_mat,fecha_nac)
        aprobado, b = aprobar(ing_mens, num_dep)
        fecha_reg = date.today()

        r, id = insertar(nombre,apellido_pat,apellido_mat,fecha_nac,rfc,ing_mens,num_dep,b,fecha_reg)
        print(r,id)

        return '''
                  <h3 style="color: #3894A4; font-size:26px;">Resultado:</h3>
                  <h1 style="color: #40D8D7; font-size:18px;">ID: {}</h1>
                  <h1 style="color: #40D8D7; font-size:18px;">RFC: {}</h1>
                  <h1 style="color: #40D8D7; font-size:18px;">Status: {}</h1>'''.format(id, rfc, aprobado)

    return '''
           <style>
                *{box-sizing:border-box;}
                form{
                    width:300px;
                    padding:16px;
                    border-radius:10px;
                    margin:auto;
                    background-color: #49E5CD;
                    text-align: center;
                    font-family: Arial;
                }
                form label{
                    font-weight:bold;
                }
                form input[type="text"],
                form input[type="number"],
                form input[type="date"]{
                    width:180px;
                    padding:3px 10px;
                    border:1px solid #f6f6f6;
                    border-radius:3px;
                    background-color:#f6f6f6;
                    margin:8px 0;
                    display:inline-block;
                }
                form input[type="submit"]{
                    width:50%;
                    padding:8px;
                    margin-top:32px;
                    border:1px solid #000;
                    border-radius:5px;                    
                    color:#fff;
                    background-color:#6A8562;
                } 
	       </style>
           <form method="POST">
               <div><label>Nombre: <br><input type="text" name="nombre" maxlength="20" required></label></div><br>
               <div><label>Apellido Paterno: <br><input type="text" name="apellido_pat" maxlength="20" required></label></div><br>
               <div><label>Apellido Materno: <br><input type="text" name="apellido_mat" maxlength="20" required></label></div><br>
               <div><label>Fecha de Nacimiento: <br><input type="date" name="fecha_nac" required></label></div><br>
               <div><label>Ingresos Mensuales: <br><input type="number" name="ing_mens" value="1000" min="1000" step="any" required></label></div><br>
               <div><label># Dependientes económicos: <br><input type="number" name="num_dep" value="0" min="0" required></label></div>
               <input type="submit" value="Enviar Información">
           </form>'''