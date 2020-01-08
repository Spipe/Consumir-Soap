require_relative 'scripts.rb'

def properCase(api,client)
    puts 'Ingrese el apellido paterno: '
    @paterno = gets.chomp
    puts 'Ingrese el apellido materno: '
    @materno = gets.chomp
    puts 'Ingrese los nombres: '
    @nombres = gets.chomp
    puts 'Ingrese el género (M/F): '
    @gender = gets.chomp
    @genders = [
        'M',
        'm',
        'F',
        'f'
    ]
    if (!(@genders.include? @gender))
        validate = 1
        while(validate==1)
            puts "Ingrese el género correctamente: "
            @gender = gets.chomp
            if ((@genders.include? @gender))
                validate=0
            end
        end
    end
    if @api=='REST'
        data = HTTParty.post(@base_uri_rest + 'nombrePropio',
            body:{
                name: @nombres,
                apellido_m: @materno,
                apellido_p: @paterno,
                gender: @gender.capitalize()
            }   
        )
    puts data
    else
        response = client.call(:nombre_propio,message:{
            name:@nombres,
            gender:@gender,
            apellidop:@paterno,
            apellidom:@materno,
        })
        puts response.doc
    end
    waiting()
end 