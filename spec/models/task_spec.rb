require 'rails_helper'

describe Task do
  describe "validations" do
    it{ is_expected.to validate_presence_of(:name)}
    it{ is_expected.to validate_presence_of(:content)}
  end

  # scenario "あたらしいtaskを追加する事ができる" do
  #   task = build(:task)
  #   visit new_task_path
  #   click_link "タスク"
  #   fill_in "Name", with: task.name
  #   fill_in "Content", with: task.content
  #   click_button "Create Task"

  #   expext{
  #         click_link "タスク"
  #         fill_in "Name",with: task.name
  #         fill_in "Content", with: task.content
  #         click_button "Create Task"
  #   }
  # end
end
