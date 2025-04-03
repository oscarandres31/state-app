class AssistantsController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_assistant, only: [:edit, :show, :update, :destroy]

  def index
     if current_user&.manager?
      @assistant = Assistant.includes(:state_aux, photo_attachment: :blob).all
      render :index
    else
      @assistant = Assistant.includes(:state_aux, photo_attachment: :blob ).all
      render :view
    end
  end

  def view
    @assistant = Assistant.includes(:state_aux, photo_attachment: :blob ).all
  end

  def new
    @assistant = Assistant.new
  end

  def edit
    set_assistant
  end

  def show
  end

  def create
    @assistants = Assistant.new(assistant_params)
    if @assistant.save
      redirect_to assistants_path, notice: 'Assistant was successfully created.'
    else
      render :new
    end

  end

  def update
    set_assistant
    if @assistant.update(assistant_params)
      notify_all_users
      redirect_to assistants_path, notice: "actualizado"
    else
      render :edit
    end
  end

  def destroy
    if current_user.manager?
    set_assistant
    @assistant.destroy
    redirect_to assistants_path, notice: 'Assistant was successfully deleted.'
    end
  end

  private

  def set_assistant
    @assistant = Assistant.find(params[:id])
  end

  def assistant_params
    params.require(:assistant).permit(:name, :state_aux_id, :photo)
  end


  def notify_all_users
    ActionCable.server.broadcast(
      "notification_channel",
      {
        id: @assistant,
        status: @assistant.state_aux_id,
        action: "hola se ha actualizado el estado del Asistente"
      }
    )
  end
end
