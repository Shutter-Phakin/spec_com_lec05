class MainController < ApplicationController
  def test
      @number_subjects = params[:number_subjects].to_i
      
  end

  def test_re
    @num_sub = params[:num_sub]

    array1 = params[:subject][:name]
    array2 = params[:subject][:score]
    array = array1.zip(array2)

    #create
    @max_score = array2.max
    @sum_score = 0

    for e in array do
      title = e[0]
      score = e[1]

      if(Subject.find_by(title: "#{title}") == nil)
          s = Subject.create(title: title, score: score)
          s.save
      else
        s = Subject.find_by(title: "#{title}")
        s.score = score
        s.save
      end

      if e[1].to_i >= @max_score.to_i
        @max_score = e[1]
        @max_sub = e[0]
      end
      @sum_score = @sum_score + e[1].to_i

      # if e[0] == "" || e[1] == "" 
      #   redirect_to main_test_url(number_subjects: @num_sub) and return
      # end
    end
          
  end

  def first_page
    
  end

  def score_list

  end

end
