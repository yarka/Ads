require 'spec_helper'

describe AdsController do

  def valid_attributes(options={})
    { :title => 'SuperTestText',
      :description => 'Test description',
      :price => 10.96 }.merge(options)
  end

  describe "GET index" do
    it "assigns all ads as @ads" do
      ad = Ad.create! valid_attributes
      get :index
      assigns(:ads).should eq([ad])
    end
  end

  describe "GET show" do
    it "assigns the requested ad as @ad" do
      ad = Ad.create! valid_attributes
      get :show, :id => ad.id.to_s
      assigns(:ad).should eq(ad)
    end
  end

  describe "GET new" do
    it "assigns a new ad as @ad" do
      get :new
      assigns(:ad).should be_a_new(Ad)
    end
  end

  describe "GET edit" do
    it "assigns the requested ad as @as" do
      ad = Ad.create! valid_attributes
      get :edit, :id => ad.id.to_s
      assigns(:ad).should eq(ad)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ad" do
        expect {
          post :create, :ad => valid_attributes
        }.to change(Ad, :count).by(1)
      end

      it "assigns a newly created ad as @ad" do
        post :create, :ad => valid_attributes
        assigns(:ad).should be_a(Ad)
        assigns(:ad).should be_persisted
      end

      it "redirects to the created ad" do
        post :create, :ad => valid_attributes
        response.should redirect_to(Ad.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ad as @ad" do
        Ad.any_instance.stub(:save).and_return(false)
        post :create, :ad => {}
        assigns(:ad).should be_a_new(Ad)
      end

      it "re-renders the 'new' template" do
        Ad.any_instance.stub(:save).and_return(false)
        post :create, :ad => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ad" do
        ad = Ad.create! valid_attributes
        Ad.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => ad.id, :ad => {'these' => 'params'}
      end

      it "assigns the requested ad as @ad" do
        ad = Ad.create! valid_attributes
        put :update, :id => ad.id, :ad => valid_attributes
        assigns(:ad).should eq(ad)
      end

    end

    describe "with invalid params" do
      it "assigns the ad as @ad" do
        ad = Ad.create! valid_attributes
        Ad.any_instance.stub(:save).and_return(false)
        put :update, :id => ad.id.to_s, :ad => {}
        assigns(:ad).should eq(ad)
      end

      it "re-renders the 'edit' template" do
        ad = Ad.create! valid_attributes
        Ad.any_instance.stub(:save).and_return(false)
        put :update, :id => ad.id.to_s, :ad => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ad" do
      ad = Ad.create! valid_attributes
      expect {
        delete :destroy, :id => ad.id.to_s
      }.to change(Ad, :count).by(-1)
    end

    it "redirects to the ad list" do
      ad = Ad.create! valid_attributes
      delete :destroy, :id => ad.id.to_s
      response.should redirect_to(ads_url)
    end
  end

end