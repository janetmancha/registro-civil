# Run stubby server
stubby -d registro-civil.yml

# Request for create person
curl -v -X PUT -H "content-type: application/json" -d '{"Nombre":"Janet","Fecha Nacimiento":"04-01-1980","Estado Civil": "Soltera"}' 127.0.0.1:8882/es/api/v1/personas

# Request for delete person
curl -v -X DELETE 127.0.0.1:8882/es/api/v1/personas/Janet

# Request GET person
curl -i -H GET 127.0.0.1:8882/es/api/v1/personas/Janet

# Request POST person
curl -v -H POST 127.0.0.1:8882/es/api/v1/personas/Janet

# Request for create crearbodas
curl -v -X PUT -H "content-type: application/json" -d '{"Nombre marido":"German","Nombre mujer":"Janet","Fecha": "12-03-2015"}' 127.0.0.1:8882/es/api/v1/crearbodas
