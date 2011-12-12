require 'spec_helper'

describe Codename::Lister::RandomLister do
  it "should return 88 constellation names" do
    lister = Codename::Lister::RandomLister.instance
    lister.list.size.should == 100000
  end
  
  it "should return star lister by name" do
    lister = Codename::Lister::Factory.instance.lister("random")
    lister == Codename::Lister::RandomLister
  end
end