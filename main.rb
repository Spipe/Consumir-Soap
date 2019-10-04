
require 'rubygems'
require 'httparty'
require 'savon'
require_relative 'menu.rb'
#Rutas REST que hay que consumir
    ##  http://javendanon.pythonanywhere.com/verificaRut
    ##  http://javendanon.pythonanywhere.com/nombrePropio
#Rutas SOAP que hay que consumir

    ## http://localhost:8000/digitoVerificador?rut=19405068-2
    ## http://localhost:8000/nombrePropio?name=Juan&apellido_p=Avendaño&apellido_m=Nunez&gender=M

mainMenu()

