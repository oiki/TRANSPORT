class SoignantController < ApplicationController
  def index
    @transports = Transport.all
    @transport = Transport.new
  end

  def create
    @transport = Transport.new(transport_params)
    @transport.requested_by = current_user.id
    if @transport.save
      redirect_to soignant_index_path, notice: 'Transport request was successfully created.'
    else
      render :index
    end
  end

  private

  def transport_params
    params.require(:transport).permit(:description, :status, :assigned_to)
  end
end
