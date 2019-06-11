# app/controllers/nuances_controller.rb

class NuancesController < ApplicationController

  def index # Fabricデータを全て取得して表示
    @fabrics = Fabric.all
  end

  def search # 検索ボタン押したら/nuances/search に移動
  # hardnessだけ1（他は0）とかthicknessだけ1（他は0）でも検索できるようにしたい
  # @nuances = Fabric.all.where('hardness like ?', "%#{params[:hardness]}%")
                      # .where('thickness like ?', "%#{params[:thickness]}%")
                      # .where('brightness like ?', "%#{params[:brightness]}%")

  @nuances = Fabric.all
  if params[:hardness]
    @nuances = @nuances.hardness params[:hardness]
  end
  if params[:thickness]
    @nuances = @nuances.thickness params[:thickness]
  end
  if params[:brightness]
    @nuances = @nuances.brightness params[:brightness]
  end

end

end
