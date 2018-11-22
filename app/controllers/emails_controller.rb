class EmailsController < ApplicationController
  def index
  	@emails = Email.all
  	# @show_email = Email.find(params[:id])
	p params

  end

  def destroy
  	@email_show = Email.find(params[:id])
  	p "look hereeeeeeeeeeeeeeeee"
  	p @email_show
  	@email_show.destroy
  	respond_to do |format|
  		format.html {redirect_to root_path}
  		format.js
  	end
  end

  def show
  	@email_show = Email.find(params[:id])
  	@email_show.update(readed: true)
  	respond_to do |format|
  		format.html {redirect_to root_path}
  		format.js
  	end
  end
end
