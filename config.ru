#config.ru
require 'rack'
class MiPrimeraWebApp
    def call(env)
        #1° http, 2° headers, 3° body de la pagina
        [200, {'Content-Type'=> 'text/html'}, ['<p>Lorem</p>']]
    end
end
run MiPrimeraWebApp.new