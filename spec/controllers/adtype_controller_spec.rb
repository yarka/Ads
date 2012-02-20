require 'spec_helper'

describe AdtypesController do

  def valid_attributes(options={})
    { :name => "Test type" }
  end

  describe "GET index" do
    it "assigns all adtypes as @adtypes" do
      adtype = Adtype.create! valid_attributes
      get :index
      assigns(:adtypes).should eq([adtype])
    end
  end

  describe "GET show" do
    it "assigns the requested adtypes as @adtypes" do
      adtype = Adtype.create! valid_attributes
      get :show, :id => adtype.id.to_s
      assigns(:adtype).should eq(adtype)
    end
  end

  describe "GET new" do
    it "assigns a new adtype as @adtype" do
      get :new
      assigns(:adtype).should be_a_new(Adtype)
    end
  end

  describe "GET edit" do
    it "assigns the requested adtype as @as" do
      adtype = Adtype.create! valid_attributes
      get :edit, :id => adtype.id.to_s
      assigns(:adtype).should eq(adtype)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Adtype" do
        expect {
          post :create, :adtype => valid_attributes
        }.to change(Adtype, :count).by(1)
      end

      it "assigns a newly created adtype as @adtype" do
        post :create, :adtype => valid_attributes
        assigns(:adtype).should be_a(Adtype)
        assigns(:adtype).should be_persisted
      end

      it "redirects to the created adtype" do
        post :create, :adtype => valid_attributes
        response.should redirect_to(Adtype.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved adtype as @adtype" do
        Adtype.any_instance.stub(:save).and_return(false)
        post :create, :adtype => {}
        assigns(:adtype).should be_a_new(Adtype)
      end

      it "re-renders the 'new' template" do
        Adtype.any_instance.stub(:save).and_return(false)
        post :create, :adtype => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested adtype" do
        adtype = Adtype.create! valid_attributes
        Adtype.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => adtype.id, :adtype => {'these' => 'params'}
      end

      it "assigns the requested adtype as @adtype" do
        adtype = Adtype.create! valid_attributes
        put :update, :id => adtype.id, :adtype => valid_attributes
        assigns(:adtype).should eq(adtype)
      end

    end

    describe "with invalid params" do
      it "assigns the adtype as @adtype" do
        adtype = Adtype.create! valid_attributes
        Adtype.any_instance.stub(:save).and_return(false)
        put :update, :id => adtype.id.to_s, :adtype => {}
        assigns(:adtype).should eq(adtype)
      end

      it "re-renders the 'edit' template" do
        adtype = Adtype.create! valid_attributes
        Adtype.any_instance.stub(:save).and_return(false)
        put :update, :id => adtype.id.to_s, :adtype => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested adtype" do
      adtype = Adtype.create! valid_attributes
      expect {
        delete :destroy, :id => adtype.id.to_s
      }.to change(Adtype, :count).by(-1)
    end

    it "redirects to the adtype list" do
      adtype = Adtype.create! valid_attributes
      delete :destroy, :id => adtype.id.to_s
      response.should redirect_to(adtypes_url)
    end
  end

end
