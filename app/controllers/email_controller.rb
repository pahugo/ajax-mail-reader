class EmailController < ApplicationController
  def index
    @emails = Email.all.sort_by{|email| email.id}
  end

  def show_email
    @email = Email.find(params[:id])
    @email.read = true
    @email.save
    respond_to do |format|
      format.html { redirect_to '/' }
      format.js
    end
  end

  def destroy
    @emails = Email.all
    @id = params[:id]
    respond_to do |format|
      format.html { redirect_to '/' }
      format.js
    end
    Email.find(params[:id]).destroy
  end
end
