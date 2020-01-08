require_relative 'scripts.rb'

def validateRut(api,client)
    puts 'Ingrese el rut (ej 19405068-2): '
    @rut = gets.chomp
    @rutSpliteado = @rut.split('-')
    if @api=='REST'
        data = HTTParty.post(@base_uri_rest + 'verificaRut',
            body:{
                rut: @rut
            }
        )
        puts data
    else
        client = Savon.client(
            wsdl:@base_uri_soap+'?wsdl',
            pretty_print_xml: true
        )
        response = client.call(:digito_verificador,message:{
            rut:@rut,
            times:1
        })
        puts response.doc
    end
    waiting()
end
