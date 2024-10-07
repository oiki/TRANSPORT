class BrancardierController < ApplicationController
  def index
    @transports = Transport.where("assigned_to = ? AND (status = ? OR status = ?)", current_user.id, "active", "future")
  end

  def history
    @transports = Transport.where(assigned_to: current_user.id)
  end
end
