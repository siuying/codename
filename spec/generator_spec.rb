require 'spec_helper'

describe Codename::Generator do
  it "should generate names" do
    g = Codename::Generator.new("stars", "colors")
    g.listers.size.should == 2
    
    name = g.generate
    name.should_not be_nil
  end

end
