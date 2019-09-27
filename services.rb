

@base_uri_rest = 'http://javendanon.pythonanywhere.com/'

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

