require 'open-uri'

class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @techs = Tech.where('rating > ?', 0).order(:title)
    @projects = Project.includes(:techs).all
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
    version_param = resume_params[:version]
    @user = User.find_or_initialize_by(email: email_param)
    @user.source = 'resume' unless @user.persisted?

    # https://github.com/ambethia/recaptcha
    begin
      unless Flipper.enabled?(:resume_download)
        Rails.logger.error("Resume_Request Disabled: Email: #{email_param} User: #{@user.errors.full_messages}")
        return render(file: "public/412.html", layout: false)
      end

      if Rails.env.development? || verify_recaptcha(model: @user) && @user.save
        variant_name = 'denormalized'
        resume_path = Rails.root.join('lib', 'assets', 'resume', variant_name, 'resume_hunter_chapman_denormalized.pdf')
        resume_stat = File::stat(resume_path)
        r_size = resume_stat.size || 0

        if version_param == 'visual'
          Rails.logger.info("Resume_Request View: Email: #{email_param} File KB: #{r_size}")
          send_file(resume_path, filename: "resume_hunter_chapman_denormalized.pdf", type: 'application/pdf', disposition: :inline, length: r_size)
        else
          Rails.logger.info("Resume_Request Download: Email: #{email_param} File KB: #{r_size}")
          send_file(resume_path, filename: "resume_hunter_chapman_denormalized.pdf", type: 'application/pdf', length: r_size)
        end
      else
        Rails.logger.error("Resume_Request Failed: Email: #{email_param} User: #{@user.errors.full_messages}")
        render(file: "public/412.html", layout: false)
      end
    rescue => e
      Rails.logger.error("Resume_Request Rescued: Email: #{email_param} User: #{@user.errors.full_messages} File KB: #{r_size} Error #{e.message}")
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
      params.permit(:request_email, 'g-recaptcha-response', :version)
    end
end
