require 'rails_helper'

RSpec.describe 'Sobreviventes API', type: :request do

	let!(:sobreviventes) { create_list(:sobrevivente, 10) }
	let(:sobrevivente_id) { sobreviventes.first.id }

	describe 'GET /sobreviventes' do
		before { get '/sobreviventes' }

		it 'returns sobreviventes' do
      		# Note `json` is a custom helper to parse JSON responses
      		expect(json).not_to be_empty
      		expect(json.size).to eq(10)
    	end
    	it 'returns status code 200' do
      		expect(response).to have_http_status(200)
    	end
	end

	describe 'GET /sobreviventes/:id' do 
		before { get "/sobreviventes/#{sobrevivente_id}" }
		
		context 'when the record exists' do
      		
      		it 'returns the sobrevivente' do
        		expect(json).not_to be_empty
        		expect(json['id']).to eq(sobrevivente_id)
      		end

      		it 'returns status code 200' do
        		expect(response).to have_http_status(200)
      		end
		end

		context 'when the record does not exist' do
      		let(:sobrevivente_id) { 100 }

      		it 'returns status code 404' do
        		expect(response).to have_http_status(404)
      		end

      		it 'returns a not found message' do
        		expect(response.body).to match(/Couldn't find Sobrevivente/)
      		end
    	end
	end

	describe 'POST /sobreviventes' do
	    # valid payload
	    let(:valid_attributes) { { nome: 'Luke', idade: 15, genero: 'Male', last_latitude: -4.898,
	                               last_longitude: -3.9821, first_abducted_flag: -1, 
	                               second_abducted_flag: -1,
	                               third_abducted_flag: -1,
	                               is_abducted: false } }

	    context 'when the request is valid' do
	    	before { post '/sobreviventes', params: valid_attributes }

	      	it 'creates a sobrevivente' do
	        	expect(json['nome']).to eq('Luke')
	      	end

	      	it 'returns status code 201' do
	       		expect(response).to have_http_status(201)
	      	end
	    end

	    context 'when the request is invalid' do
	      	before { post '/sobreviventes', params: { nome: 'Foobar' } }

	      	it 'returns status code 422' do
	        	expect(response).to have_http_status(422)
	      	end

	      	it 'returns a validation failure message' do
	        	expect(response.body)
	          	 .to match(/Validation failed: Idade can't be blank, Genero can't be blank, Last latitude can't be blank, Last longitude can't be blank/)
	      	end
	    end
  	end

  	describe 'PUT /sobreviventes/:id' do
    	let(:valid_attributes) { { nome: 'Shopping' } }

    	context 'when the record exists' do
      		before { put "/sobreviventes/#{sobrevivente_id}", params: valid_attributes }

      		it 'updates the record' do
        		expect(response.body).to be_empty
      		end

      		it 'returns status code 204' do
        		expect(response).to have_http_status(204)
      		end
    	end
  	end

  	describe 'DELETE /sobreviventes/:id' do
    	before { delete "/sobreviventes/#{sobrevivente_id}" }

    	it 'returns status code 204' do
      		expect(response).to have_http_status(204)
    	end
  	end


end