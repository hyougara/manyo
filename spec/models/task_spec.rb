require 'rails_helper'

describe Task do
  describe "validations" do
    it{ is_expected.to validate_presence_of(:name)}
    it{ is_expected.to validate_presence_of(:content)}
  end
end
