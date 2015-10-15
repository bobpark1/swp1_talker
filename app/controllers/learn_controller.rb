class LearnController < ApplicationController
  def index
  end
  
  def create
    Talk.create(question: params[:ask], answer: params[:answer])
    redirect_to '/learn'
  end
  
end
