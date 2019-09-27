require_relative 'services.rb'

def menuOpciones(api)
    @salir2 = true
    while(@salir2) do
        puts "Menu de opciones API #{@api}"
        puts 'Seleccione una opción de las siguientes'
        puts '1) Validación digito verificador.'
        puts '2) Nombre propio'
        puts '3) Salir y volver al menú anterior'
        loop do
            @opcion= gets.chomp.to_i
            if @opcion==1
                validateRut(@api)
                break
            elsif @opcion==2
                # Funct to validate proper case 
                properCase(@api)
                break
            elsif @opcion==3
                @salir2 = false
                break
            end
        end
    end
end


def mainMenu
    @salir = true
    while (@salir) do
        puts 'Menu de opciones API redes'
        puts 'Seleccione una opción de las siguientes'
        puts '1) API Rest '
        puts '2) API Soap '
        puts '3) Salir de la aplicación'
        loop do
            @opcion = gets.chomp.to_i
            if @opcion==1
                @api = 'REST'
                break
            elsif @opcion==2
                @api = 'Soap'
                break
            elsif @opcion==3
                @salir = false
                break
            end
        end
        if @opcion!=3
            menuOpciones(@api)
        end
    end
end