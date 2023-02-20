class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answer_one = 'Great!'
    answer_two = 'Silly question, get dressed and go to work!'
    answer_three = "I don't care, get dressed and go to work!"
    case params[:question]
    when 'I am going to work' then @answer = answer_one
    when params[:question].include?('?') then @answer = answer_two
    else @answer = answer_three
    end
  end
end
