class FabricsController < ApplicationController
  def index
    @fabrics = Fabric.all
  end

  def new
  end

  def create
    @fabric = Fabric.new(number: params[:number], category: params[:category], uchikomi: params[:uchikomi],
    organization: params[:organization], standard: params[:standard], image_fabric: params[:image_fabric].original_filename, brand: params[:brand],
    hardness: params[:hardness], thickness: params[:thickness], brightness: params[:brightness])

    @fabric.save
      redirect_to("/fabrics/#{@fabric.id}")

    if params[:image_fabric]
      @fabric.image_fabric ="#{@fabric.id}.jpg"
      image_fabric = params[:image_fabric]
      File.binwrite("public/fabrics/#{@fabric.id}.jpg", image_fabric.read)
    end
  end

  def show
    @fabric =Fabric.find_by(id:params[:id])
  end

  def edit
    @fabric = Fabric.find_by(id:params[:id])
  end

  def update
    @fabric = Fabric.find_by(id: params[:id])
    @fabric.number = params[:number]
    @fabric.category = params[:category]
    @fabric.brand = params[:brand]
    @fabric.standard = params[:standard]
    @fabric.organization = params[:organization]
    @fabric.uchikomi = params[:uchikomi]
    @fabric.hardness = params[:hardness]
    @fabric.thickness = params[:thickness]
    @fabric.brightness = params[:brightness]

    if params[:image_fabric]
      @fabric.image_fabric ="#{@fabric.id}.jpg"
      image_fabric = params[:image_fabric]
      File.binwrite("public/fabrics/#{@fabric.id}.jpg", image_fabric.read)
    end

    @fabric.save
    redirect_to("/fabrics")
  end

  def destroy
    @fabric = Fabric.find_by(id: params[:id])
    @fabric.destroy
    redirect_to("/fabrics")
  end




end
