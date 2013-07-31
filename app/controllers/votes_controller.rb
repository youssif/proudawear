class VotesController < ApplicationController
  def create
    @vote = Vote.create(params[:vote].merge(user_id: current_user.id)
  end

  def new
  end

  def edit
  end

  def delete
  end
end
