class QuestionnairesController < ApplicationController
  def index
    @questionnaires = Questionnaire.all
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def create
    @questionnaire = Questionnaire.new
    @questionnaire.user_id = params[:user_id]
    @questionnaire.respondent_id = params[:respondent_id]
    @questionnaire.course_id = params[:course_id]
    @questionnaire.answer_1 = params[:answer_1]
    @questionnaire.answer_2 = params[:answer_2]
    @questionnaire.answer_3 = params[:answer_3]
    @questionnaire.answer_4 = params[:answer_4]
    @questionnaire.answer_5 = params[:answer_5]

    if @questionnaire.save
      redirect_to "/questionnaires", :notice => "Questionnaire created successfully."
    else
      render 'new'
    end
  end

  def edit
    @questionnaire = Questionnaire.find(params[:id])
  end

  def update
    @questionnaire = Questionnaire.find(params[:id])

    @questionnaire.user_id = params[:user_id]
    @questionnaire.respondent_id = params[:respondent_id]
    @questionnaire.course_id = params[:course_id]
    @questionnaire.answer_1 = params[:answer_1]
    @questionnaire.answer_2 = params[:answer_2]
    @questionnaire.answer_3 = params[:answer_3]
    @questionnaire.answer_4 = params[:answer_4]
    @questionnaire.answer_5 = params[:answer_5]

    if @questionnaire.save
      redirect_to "/questionnaires", :notice => "Questionnaire updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @questionnaire = Questionnaire.find(params[:id])

    @questionnaire.destroy

    redirect_to "/questionnaires", :notice => "Questionnaire deleted."
  end
end
