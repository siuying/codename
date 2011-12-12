require 'spec_helper'

describe Codename::Lister::ElementsLister do
  it "should return 88 element names" do
    lister = Codename::Lister::ElementsLister.instance
    lister.list.size.should == 118
  end
  
  it "should return elements lister by name" do
    lister = Codename::Lister::Factory.instance.lister("elements")
    lister == Codename::Lister::ElementsLister
  end
end