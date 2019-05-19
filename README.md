# README

Para executar esse projeto precisa garantir ter instalado Ruby e Rails nas seguinter versões:

Ruby version: 2.6

Rails version: 5.2.3

Para iniciar o servidor e poder testar a api basta executar os seguintes comandos via terminal linux na pasta onde o projeto foi clonado:
	
	bundle install
	rails db:migrate
	rails server
	
	#agora o servidor está ativo e os endpoints citados abaixo estão funcionando normalmente


Endpoints:
	
	POST localhost:3000/sobreviventes -> adiciona um sobrevivente no banco de dados
		nome:string
		idade:integer
		genero:string
		last_latitude:float
		last_longitude:float

	PUT localhost:3000/sobreviventes/:id ->atualiza a localização de um sobrevivente
		last_latitude:float
		last_longitude:float

	GET localhost:3000/sobreviventes/ ->retorna uma lista com todos os sobreviventes em ordem alfabética

	POST localhost:3000/flag_as_abducted/:your_id/:abducted_id -> O sobrevivente de id :your_id marca o sobrevivente com o id = abducted_id como abduzido

	GET localhost:3000/nonabducteds/ -> retorna a percentagem de sobreviventes não abduzidos

	GET localhost:3000/abducteds/    -> retorna a percentagem de sobreviventes abduzidos
	

Coisas que eu gostaria de ter acrescentado a api:

	1-Autenticação para evitar que alienigenas aprendam REST e invadam a api 

