class VotesController < ApplicationController
  def create
    @vote = Vote.create(params[:vote], user_id: current_user.id, post_id: @post.id)

  end

  def destroy
    @vote =Vote.find(user_id: current_user.id, post_id: @post.id).destroy
    @vote.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end




end
