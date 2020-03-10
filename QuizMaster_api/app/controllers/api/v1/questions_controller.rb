class Api::V1::QuestionsController < ApplicationController
  before_action :find_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all.order('updated_at DESC')
    render json: @questions
  end

  def show
    @question = Question.find(params[:id])
    render json: @question, status: 200
  end

  def create
    @question = Question.create(question_params)
    render json: @question, status: 200
  end


  def update
    @question.update(question_params)
    if @question.save
      render json: @question, status: 200
    else
      render json: { errors: @question.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    question = Question.find_by(id: params[:id])
    question.destroy
    render json: question
  end


  private

  def question_params
    params.permit(:title, :description, :dog_id)
  end

  def find_question
    @question = Question.find(params[:id])
  end
end
