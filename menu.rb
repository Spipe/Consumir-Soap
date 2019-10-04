require_relative 'services.rb'


def menuOpciones(api)
    client = Savon.client(
            wsdl:@base_uri_soap+'?wsdl',
            pretty_print_xml: true
    )
    @salir2 = true
    while(@salir2) do
        Gem.win_platform? ? (system "cls") : (system "clear")
        puts "Menu de opciones API #{@api}"
        puts 'Seleccione una opción de las siguientes'
        puts '1) Validación digito verificador.'
        puts '2) Nombre propio'
        puts '3) Salir y volver al menú anterior'
        loop do
            @opcion= gets.chomp.to_i
            if @opcion==1
                validateRut(@api,client)
                break
            elsif @opcion==2
                # Funct to validate proper case 
                properCase(@api,client)
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
        Gem.win_platform? ? (system "cls") : (system "clear")
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