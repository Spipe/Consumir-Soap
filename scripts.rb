require 'io/console'
require 'savon'
require 'httpi'
@base_uri_rest = 'http://javendanon.pythonanywhere.com/'
@base_uri_soap = 'http://localhost:8000/'


def waiting                                                                                                               
    puts "Presione cualquier tecla para continuar..."                                                                                                    
    gets                                                                                                   
end  

# def validateRut(api,client)
#     puts 'Ingrese el rut (ej 19405068-2): '
#     @rut = gets.chomp
#     @rutSpliteado = @rut.split('-')
#     if @api=='REST'
#         data = HTTParty.post(@base_uri_rest + 'verificaRut',
#             body:{
#                 rut: @rut
#             }
#         )
#         puts data
#     else
#         client = Savon.client(
#             wsdl:@base_uri_soap+'?wsdl',
#             pretty_print_xml: true
#         )
#         response = client.call(:digito_verificador,message:{
#             rut:@rut,
#             times:1
#         })
#         puts response.doc
#     end
#     waiting()
# end

# def properCase(api,client)
#     puts 'Ingrese el apellido paterno: '
#     @paterno = gets.chomp
#     puts 'Ingrese el apellido materno: '
#     @materno = gets.chomp
#     puts 'Ingrese los nombres: '
#     @nombres = gets.chomp
#     puts 'Ingrese el género (M/F): '
#     @gender = gets.chomp
#     @genders = [
#         'M',
#         'm',
#         'F',
#         'f'
#     ]
#     if (!(@genders.include? @gender))
#         validate = 1
#         while(validate==1)
#             puts "Ingrese el género correctamente: "
#             @gender = gets.chomp
#             if ((@genders.include? @gender))
#                 validate=0
#             end
#         end
#     end
#     if @api=='REST'
#         data = HTTParty.post(@base_uri_rest + 'nombrePropio',
#             body:{
#                 name: @nombres,
#                 apellido_m: @materno,
#                 apellido_p: @paterno,
#                 gender: @gender.capitalize()
#             }   
#         )
#     puts data
#     else
#         response = client.call(:nombre_propio,message:{
#             name:@nombres,
#             gender:@gender,
#             apellidop:@paterno,
#             apellidom:@materno,
#         })
#         puts response.doc
#     end
#     waiting()
# end 

