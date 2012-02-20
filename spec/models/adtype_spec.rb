require 'spec_helper'

describe Adtype do

  it "should create a new instance given valid attributes" do
    expect { Factory(:adtype_example) }.to change(Adtype, :count).by(1)
  end

  it { should validate_presence_of(:name) }

  subject { Factory(:adtype_example) }

  it { should validate_uniqueness_of(:name) }
end

