class CoachingController < ApplicationController
  def answer
    @message = params[:query]
    @reponse = coach_answer_enhanced(@message)

    # response = " "

    # while response !=""
    #   puts "Hello you ! I'm listening to you..."
    #   print">"
    #   @message = gets.chomp
    #   response = coach_answer_enhanced(@message)
    #   puts response
    # end
  end

  def ask

  end

  private

 def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.downcase == "i am going to work right now!"
    ""
  elsif (your_message.include? "?") == true
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  answer = coach_answer(your_message)
  if answer == ""
    ""
  elsif your_message == your_message.upcase
    "I can feel your motivation! #{answer}"
  else
    answer
  end
end


end
