class TalkerController < ApplicationController
  def index
    @chats = Chat.all
  end
  
  def create
    talk = Talk.where(question: params[:ask]).sample

    unless talk.nil?
      Chat.create(user: "user", message: talk.question)
      Chat.create(user: "bot", message: talk.answer)
      redirect_to '/'
    else
      redirect_to '/learn'
    end
  end
end
