require 'spec_helper'

describe Codename::Lister::ColorsLister do
  it "should return color names" do
    lister = Codename::Lister::ColorsLister.instance
    lister.list.size.should == 285    
  end

  it "should return color lister by name" do
    lister = Codename::Lister::Factory.instance.lister("colors")
    lister == Codename::Lister::ColorsLister
  end
  
  it "should find random item from the lister" do
    lister = Codename::Lister::ColorsLister.instance
    item = lister.random
    item.should_not be_nil
    lister.list.index(item).nil?.should be_false
  end
end