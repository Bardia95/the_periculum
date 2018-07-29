class MentalModelsController < ApplicationController
  def show
    @model = MentalModel.find(params[:id])
  end

  def index
    @models = MentalModel.all
  end

  def new
    @model = MentalModel.new
  end

  def edit
    @model = MentalModel.find(params[:id])
  end

  def create
    @model =  MentalModel.new(model_params)

    if @model.save
      redirect_to @model
    else
      render 'new'
    end
  end

  def update
    @model = MentalModel.find(params[:id])
    if @model.update(model_params)
      redirect_to @model
    else
      render 'edit'
    end
  end

  def destroy
    @model = MentalModel.find(params[:id])
    @model.destroy

    redirect_to models_path
  end

  private
    def model_params
      params.require(:mental_model).permit(:name,:description)
    end
end
