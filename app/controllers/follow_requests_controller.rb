class FollowRequestsController < ApplicationController
  def index
    @follow_requests = FollowRequest.all.order({ :created_at => :desc })

    render({ :template => "follow_requests/sent_follow_requests.html.erb" })
  end

  def accept_friend_request
    the_id = params.fetch("id_from_path")
    @follow_request = FollowRequest.where({ :id => the_id }).at(0)
    @follow_request.accepted_request = true

    if @follow_request.valid?
      @follow_request.save
      redirect_to("/all_users", { :notice => "Follow request accepted." })
    else
      redirect_to("/all_users", { :notice => "Follow request failed to accept successfully." })
    end
  end

  def index_accepted_requests
    @follow_requests = FollowRequest.all.order({ :created_at => :desc })

    render({ :template => "users/close_friends.html.erb" })
  end

  def show
    the_id = params.fetch("id_from_path")
    @follow_request = FollowRequest.where({:id => the_id }).at(0)

    render({ :template => "follow_requests/show.html.erb" })
  end

  def create
    @follow_request = FollowRequest.new
    @follow_request.sender_id = session[:user_id]
    @follow_request.recipent_id = params.fetch("recipent_id_from_query")
    @follow_request.accepted_request = params.fetch("accepted_from_query", false)

    if @follow_request.valid?
      @follow_request.save
      redirect_to("/all_users", { :notice => "Follow request sent. Response pending" })
    else
      redirect_to("/all_users", { :notice => "Follow request failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("id_from_path")
    @follow_request = FollowRequest.where({ :id => the_id }).at(0)

    @follow_request.sender_id = params.fetch("sender_id_from_query")
    @follow_request.recipent_id = params.fetch("recipent_id_from_query")
    @follow_request.accepted_request = params.fetch("accepted_from_query", false)

    if @follow_request.valid?
      @follow_request.save
      redirect_to("/follow_requests/#{@follow_request.id}", { :notice => "Follow request updated successfully."} )
    else
      redirect_to("/follow_requests/#{@follow_request.id}", { :alert => "Follow request failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("id_from_path")
    @follow_request = FollowRequest.where({ :id => the_id }).at(0)

    @follow_request.destroy

    redirect_to("/all_users", { :notice => "Follow request deleted successfully."} )
  end
end
