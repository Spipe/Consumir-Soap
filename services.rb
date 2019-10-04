

@base_uri_rest = 'http://javendanon.pythonanywhere.com/'
@base_uri_soap = 'http://localhost:8000'

def validateRut(api)
    puts 'Ingrese el rut (ej 19405068-2): '
    @rut = gets.chomp
    if @api=='REST'
        data = HTTParty.post(@base_uri_rest + 'verificaRut',
            body:{
                rut: @rut
            }
        )
        puts data
    else
        client = Savon.client(
            wsdl:@base_uri_soap
        )
        data = client.operations

        puts data

       # data_1= client.call(
       #     :get_all_related_info,
       #     message: { id: 1 }
       # )

      #  puts data_1
        
        # soap call

    end
end

def properCase(api)
    puts 'Ingrese el apellido paterno: '
    @paterno = gets.chomp
    puts 'Ingrese el apellido materno: '
    @materno = gets.chomp
    puts 'Ingrese los nombres: '
    @nombres = gets.chomp
    puts 'Ingrese el género: '
    @gender = gets.chomp
    if @api=='REST'
        data = HTTParty.post(@base_uri_rest + 'nombrePropio',
            body:{
                name: @nombres,
                apellido_m: @materno,
                apellido_p: @paterno,
                gender: @gender
            }   
        )
    puts data
    else
        
        #soap call 
    end
end 

