class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @techs = Tech.where('rating > ?', 0).order(:title)
    @projects = Project.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  def gallery
  end

  def resume_recaptcha
  end

  def resume
    email_param = resume_params[:request_email]
    @user = User.find_or_initialize_by(email: email_param)
    @user.source = 'resume' unless @user.persisted?

    # https://github.com/ambethia/recaptcha
    if verify_recaptcha(model: @user) && @user.save
      Rails.logger.info("Resume_Request Success: Email: #{email_param}")
      require 'open-uri'
      URI.open(I18n.t('resume_link')) do |pdf|
        tmpfile = Tempfile.new("tmp.pdf")
        File.open(tmpfile.path, 'wb') { |f| f.write(pdf.read) }
        send_file(tmpfile.path, :filename => "non_standard_resume_hunter_chapman.pdf")
      end

      redirect_to(root_path)
    else
      Rails.logger.error("Resume_Request Failed: Email: #{email_param} User: #{@user.errors.full_messages}")
      render(file: "public/412.html", layout: false)
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      # params.require(:user).permit(:username, :password, :user_avatar, :user_admin)
    end

    def resume_params
      params.permit(:request_email, 'g-recaptcha-response')
    end
end
