require 'spec_helper'

describe Codename::Lister::CyclonesLister do
  it "should return cylones names" do
    lister = Codename::Lister::CyclonesLister.instance
    lister.list.size.should == 145
  end

  it "should return color lister by name" do
    lister = Codename::Lister::Factory.instance.lister("cyclones")
    lister == Codename::Lister::CyclonesLister
  end
  
  it "should find random item from the lister" do
    lister = Codename::Lister::CyclonesLister.instance
    item = lister.random
    item.should_not be_nil
    lister.list.index(item).nil?.should be_false
  end
end