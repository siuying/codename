require 'spec_helper'

describe Codename::Lister::AdjectivesLister do
  it "should return 722 adjectives" do
    lister = Codename::Lister::AdjectivesLister.instance
    lister.size.should == 722
  end
  
  it "should return star lister by name" do
    lister = Codename::Lister::Factory.instance.lister("adjs")
    lister == Codename::Lister::AdjectivesLister
  end
end