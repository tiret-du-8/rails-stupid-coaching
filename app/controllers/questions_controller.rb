class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @input = params[:ask]
    if params[:ask]
      if params[:ask].include?("I am going to work")
        @answer = "Great!"
      elsif params[:ask].include?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
