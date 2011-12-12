require 'spec_helper'

describe Codename::Lister::StarsLister do
  it "should return 88 constellation names" do
    lister = Codename::Lister::StarsLister.instance
    lister.list.size.should == 88
  end
  
  it "should return star lister by name" do
    lister = Codename::Lister::Factory.instance.lister("stars")
    lister == Codename::Lister::StarsLister
  end
end