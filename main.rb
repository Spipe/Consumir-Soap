
require 'rubygems'
require 'httparty'
#Rutas REST que hay que consumir
    ##  http://javendanon.pythonanywhere.com/verificaRut
    ##  http://javendanon.pythonanywhere.com/nombrePropio

Base_uri = 'http://javendanon.pythonanywhere.com/'

# Ejemplo del rut
data = HTTParty.post('http://javendanon.pythonanywhere.com/verificaRut',
    body:{
        rut: '19405068-2'
    }
)
puts data

