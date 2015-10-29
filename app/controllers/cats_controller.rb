class CatsController < ApplicationController

  def index
    @cats = Cat.all

    if params["random"] == "true"
      @random = rand(1..Cat.count)
      redirect_to cat_path(@random)
    end
    #redirect_to cat_path(@cats.sample) if params["random"]
  end

  def show
    @cat = Cat.find(params["id"])
  end

  # def update

  # end

end
