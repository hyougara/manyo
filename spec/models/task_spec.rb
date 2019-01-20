require 'rails_helper'

describe Task do
  it "name" do
    task = Task.new(name: "yuki")
    expect(task).to be_valid
  end
end
