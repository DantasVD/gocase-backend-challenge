class SobreviventesController < ApplicationController
	before_action :set_sobrevivente, only: [:show, :update, :destroy]
	# GET /sobreviventes
	def index
    	@sobreviventes = Sobrevivente.order("nome")
    	json_response(@sobreviventes)
  	end

  	# POST /todos
  	def create
    	@sobrevivente = Sobrevivente.create!(sobrevivente_params)
    	json_response(@sobrevivente, :created)
  	end

  	# GET /todos/:id
  	def show
    	json_response(@sobrevivente)
  	end
  	
  	# PUT /todos/:id
  	def update
    	@sobrevivente.update(sobrevivente_params)
    	head :no_content
  	end

  	# DELETE /todos/:id
  	def destroy
    	@sobrevivente.destroy
    	head :no_content
  	end


  	private

  	def sobrevivente_params
    	
    	params.permit(:nome, :idade, :genero, :last_latitude, :last_longitude,
    	              :first_abducted_flag, :second_abducted_flag, :third_abducted_flag,
    	              :is_abducted)
  	end

  	def set_sobrevivente
    	@sobrevivente = Sobrevivente.find(params[:id])
  	end


end
