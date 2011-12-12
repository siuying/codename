require 'spec_helper'

describe Codename::Lister::Factory do
  it "should return list of lister" do
    listers = Codename::Lister::Factory.instance.listers
    listers.size.should > 0
  end
  
  it "should return number of lister" do
    info = Codename::Lister::Factory.instance.info
    info.size.should == 6
  end
end