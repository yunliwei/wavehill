class AdminsController < ApplicationController

  def index

  end

  def selectdata
    @admins=Admin.page(params[:pageNumber]).per(params[:pageSize])
    #render json:@admins
    render json: '{"total":' + Admin.count.to_s + ',"rows":' + @admins.to_json + '}'
    #render jso: '{"total":5000,"rows":' + @admins.to_json + '"}'
  end

end
