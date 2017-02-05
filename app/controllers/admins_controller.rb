class AdminsController < ApplicationController

  def index

  end

  def getdata
    @admins=Admin.all
  end

end
