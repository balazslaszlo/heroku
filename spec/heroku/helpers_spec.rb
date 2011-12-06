require "spec_helper"
require "heroku/helpers"

module Heroku
  describe Helpers do
    include Heroku::Helpers

    context "display_object" do

      it "should display Array correctly" do
        capture_stdout do
          display_object([1,2,3])
        end.should == <<-OUT
1
2
3
OUT
      end

      it "should display { :header => [] } list correctly" do
        capture_stdout do
          display_object({:header => [1,2,3]})
        end.should == <<-OUT
=== header
1
2
3

OUT
      end

      it "should display String properly" do
        capture_stdout do
          display_object('string')
        end.should == <<-OUT
string
OUT
      end

    end

  end
end
