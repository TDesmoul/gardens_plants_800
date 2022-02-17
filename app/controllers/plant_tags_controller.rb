class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    plant_tag_params[:tag_id].each do |plant_tag_id|
      @plant_tag = PlantTag.create(plant: @plant, tag: Tag.find(plant_tag_id))
    end
    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(tag_id: [])
  end
end
