class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]

    if @question.include? "I'm going to work"
      @coach = "I'm proud of you"
    elsif @question.include? "?"
      @coach = "Don't ask me question, just go to work"
    else
      @coach = "I don't give a crap, go to work"
    end
  end
end
