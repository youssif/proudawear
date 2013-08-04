class VotesController < ApplicationController
  def create
    @vote = Vote.create(params[:vote], user_id: current_user.id, post_id: @post.id))

  end





end
