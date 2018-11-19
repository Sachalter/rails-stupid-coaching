class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # on recupere la key ask
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "silly question"
    else
      @answer = "I don't care"
    end
  end
end
