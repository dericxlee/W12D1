class Api::PokemonController < ApplicationController

    def types
        # p Pokemon::TYPES
        render json: Pokemon::TYPES
    end

    def index
        @pokemon = Pokemon.all
        if @pokemon
            render :index
        else
            render 'error'
        end
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id])
        render :show
    end

    
end
