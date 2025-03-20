class StateAuxsController < ApplicationController
  before_action :authenticate_user!

  def index
    @state_aux = StateAux.all
  end

  def new
    @state_aux = StateAux.includes(:state_auxes).new
  end

  def edit
    set_state_aux
  end

  def show
  end

  def create
    #Rails.logger.debug params.inspect
    @state_aux = StateAux.new(state_aux_params)
    if @state_aux.save
      redirect_to state_auxs_path, notice: 'El Estado Fue Creado Correctamente'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    set_state_aux
    if @state_aux.update(state_aux_params)
      redirect_to state_auxs_path, notice: "Estado Actualizado Correctamente"
    else
      render :edit
    end
  end

  def destroy
    set_state_aux
    @state_aux.destroy
    redirect_to state_auxs_path, notice: 'Estado Eliminado Correctamente'
  end

  private

   def set_state_aux
     @state_aux = StateAux.find(params[:id])
   end

  def state_aux_params
    params.require(:state_aux).permit(:state_now)
  end
end
