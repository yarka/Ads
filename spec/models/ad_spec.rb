require 'spec_helper'

describe Ad do

  it "should create a new instance given valid attributes" do
    expect { Factory(:ad_example) }.to change(Ad, :count).by(1)
  end

  it { should validate_presence_of(:title) }

  it { should validate_presence_of(:description) }

  it { should validate_presence_of(:adtype) }

  it { should_not allow_value(0.009).for(:price) }

  subject { Factory(:ad_example) }

  it { should_not allow_value('123456789').for(:title) }
end
