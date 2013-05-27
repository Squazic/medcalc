class FraminghamProfilesController < ApplicationController
  # GET /framingham_profiles
  # GET /framingham_profiles.json
  def index
    @framingham_profiles = FraminghamProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @framingham_profiles }
    end
  end

  # GET /framingham_profiles/1
  # GET /framingham_profiles/1.json
  def show
    @framingham_profile = FraminghamProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @framingham_profile }
    end
  end

  # GET /framingham_profiles/new
  # GET /framingham_profiles/new.json
  def new
    @framingham_profile = FraminghamProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @framingham_profile }
    end
  end

  # GET /framingham_profiles/1/edit
  def edit
    @framingham_profile = FraminghamProfile.find(params[:id])
  end

  # POST /framingham_profiles
  # POST /framingham_profiles.json
  def create
    @framingham_profile = FraminghamProfile.new(params[:framingham_profile])

    respond_to do |format|
      if @framingham_profile.save
        format.html { redirect_to @framingham_profile, notice: 'Framingham profile was successfully created.' }
        format.json { render json: @framingham_profile, status: :created, location: @framingham_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @framingham_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /framingham_profiles/1
  # PUT /framingham_profiles/1.json
  def update
    @framingham_profile = FraminghamProfile.find(params[:id])

    respond_to do |format|
      if @framingham_profile.update_attributes(params[:framingham_profile])
        format.html { redirect_to @framingham_profile, notice: 'Framingham profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @framingham_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /framingham_profiles/1
  # DELETE /framingham_profiles/1.json
  def destroy
    @framingham_profile = FraminghamProfile.find(params[:id])
    @framingham_profile.destroy

    respond_to do |format|
      format.html { redirect_to framingham_profiles_url }
      format.json { head :no_content }
    end
  end
end
