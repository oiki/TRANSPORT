class RegulationController < ApplicationController
  def index
    @transports = Transport.where("status = ? OR status = ?", "active", "future")
  end

  def history
    @transports = Transport.all
  end
end
