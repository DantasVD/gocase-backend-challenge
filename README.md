# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


Coisas que eu gostaria de ter acrescentado a api:

	1-Autenticação para evitar que alienigenas aprendam REST e invadam a api 


Rotas:
	
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
