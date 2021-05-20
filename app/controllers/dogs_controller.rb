class DogsController < ApplicationController

    def index
        @dogs = Dog.all 
        @sorted_dogs = @dogs.sort_by { |dog| dog.num_of_employees }
    end

    def show
        @dog = Dog.find(params[:id])
    end


end
