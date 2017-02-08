class AdminsController < ApplicationController

  def index

  end

  def new

  end

  def selectdata
    @admins=Admin.page(params[:pageNumber]).per(params[:pageSize])
    #render json:@admins
    render json: '{"total":' + Admin.count.to_s + ',"rows":' + @admins.to_json + '}'
    #render jso: '{"total":5000,"rows":' + @admins.to_json + '"}'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admin = Admin.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_params
    params.require(:admin).permit(:name, :login, :password, :password_confirmaion, :auth, :state)
  end

end
