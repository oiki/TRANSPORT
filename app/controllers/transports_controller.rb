class TransportsController < ApplicationController
  def create
    @transport = Transport.new(transport_params)
    @transport.requested_by = 1  # Hardcoded user ID for testing
    if @transport.save
      redirect_to soignant_index_path, notice: 'Transport request was successfully created.'
    else
      render 'soignant/index'
    end
  end

  private

  def transport_params
    params.require(:transport).permit(:description, :status, :assigned_to)
  end
end
