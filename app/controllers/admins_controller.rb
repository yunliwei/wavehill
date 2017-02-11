class AdminsController < ApplicationController

  def index

  end

  def new
    @admin =Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    respond_to do |format|
      if @admin.save
        format.js
      end
    end
  end


  def selectdata
    @admins=Admin.page(params[:pageNumber]).per(params[:pageSize])
    #render json:@admins
    render json: '{"total":' + Admin.count.to_s + ',"rows":' + @admins.to_json + '}'
    #render jso: '{"total":5000,"rows":' + @admins.to_json + '"}'
  end

  def deletedata
    delarray =params[:ids].to_s.split(',')
    delarray.each do |del|
      admin= Admin.find(del)
      admin.destroy
    end
    respond_to do |format|
      format.js
    end
  end

  def valilogin
    login=Admin.find_by_login(params[:login])
    if login==nil
      render json: 'true'
    else
      render json: 'false'
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admin = Admin.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_params
    params.require(:admin).permit(:name, :login, :password, :password_confirmation, :auth, :state)
  end

end
