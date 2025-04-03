class UsersController<ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
    set_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "User was successfully created"
    else
      render :new
    end
  end

  def update
    set_user
    if @user.update(user_params)
      redirect_to users_path, notice: 'Estado del Auxiliar Actualizado'
    else
      render edit
    end
 # end
   # if @user.update(user_params) ?; redirect_to users_path, notice: "User was successfully updated"; render :edit
  end

  def destroy
    set_user
    @user.destroy
    redirect_to users_path, notice: "User was successfully  deleted"
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email)
  end
end