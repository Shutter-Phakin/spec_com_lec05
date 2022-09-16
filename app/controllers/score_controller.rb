class ScoreController < ApplicationController
  def list
    @scores_2 = Subject.all.pluck :score
    @max_score_2 = @scores_2.max
    @sum_score_2 = @scores_2.sum
    @max_sub_2 = Subject.find_by(score: "#{@max_score_2}").title

    @all_sub = Subject.all
    # if(Subject.find_by(id: @to_delete.id) != nil)
    #   @to_delete.destroy
    # end
  end

  def delete
    to_delete = Subject.find_by(id: params[:id])
    to_delete.destroy
    redirect_to "/score/list"
  end

  def edit
    # @title_edit = params[:title_edit]
    # @score_edit = params[:score_edit]
    @title_before = params[:title_before]
    @score_before = params[:score_before]
    @id_before = params[:id_before]

    @title_edit = params[:title_edit]
    @score_edit = params[:score_edit]
    @id_edit = params[:id_edit]

    if @title_edit.blank? || @score_edit.blank?
      # redirect_to '/score/edit'
    else
      update
    end
  end

  def update
    if @title_edit.blank? || @score_edit.blank?
      redirect_to '/score/edit'
    else
      s = Subject.find_by(id: @id_edit)
      s.title = @title_edit
      s.score = @score_edit
      s.save
      redirect_to '/score/list'
    end
  end
end
