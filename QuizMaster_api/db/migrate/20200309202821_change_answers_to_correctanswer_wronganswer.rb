class ChangeAnswersToCorrectanswerWronganswer < ActiveRecord::Migration[6.0]
  def change
    rename_column :quizzes, :answer, :correct_answer
    add_column :quizzes, :wrong_answer_1, :string
    add_column :quizzes, :wrong_answer_2, :string
    add_column :quizzes, :wrong_answer_3, :string
  end
end
