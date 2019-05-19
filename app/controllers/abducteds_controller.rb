class AbductedsController < ApplicationController
	
	def show
		@sobreviventes = Sobrevivente.all
		@abducteds = Sobrevivente.select(&:is_abducted).size
		@abducteds_percentage = @abducteds * 100 / @sobreviventes.count
		render json: {abducteds_percentage: @abducteds_percentage }
		
	end

	def nonabducteds_show
		@sobreviventes = Sobrevivente.all
		@abducteds = Sobrevivente.select(&:is_abducted).size
		@nonabducteds_percentage = 100 - @abducteds * 100 / @sobreviventes.count
		render json: {nonabducteds_percentage: @nonabducteds_percentage }
	end

	def flag_as_abducted
		@flagging = Sobrevivente.find(params[:your_id])
		@abducted = Sobrevivente.find(params[:survivor_id])

		
		if @abducted.first_abducted_flag == -1 then
			@abducted.first_abducted_flag = @flagging.id
			@abducted.save
		else
			if @abducted.second_abducted_flag == -1 && @abducted.first_abducted_flag != @flagging.id then
				@abducted.second_abducted_flag = @flagging.id
				@abducted.save
			else
				if @abducted.third_abducted_flag == -1  && @abducted.first_abducted_flag != @flagging.id && @abducted.second_abducted_flag != @flagging.id then
					@abducted.third_abducted_flag = @flagging.id
					@abducted.is_abducted =  true
					@abducted.save
				else

				end
			end
		end
	end
end
