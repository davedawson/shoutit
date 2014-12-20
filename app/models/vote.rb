# == Schema Information
#
# Table name: votes
#
#  id     :integer          not null, primary key
#  voter  :integer
#  type   :string(255)
#  value  :integer
#  fight  :integer
#  user   :integer
#  attack :integer
#

class Vote < ActiveRecord::Base
  belongs_to :shout, :class_name => :Shout, :foreign_key => :shout
  belongs_to :user, :class_name => :User, :foreign_key => :user

  def self.create_vote(vote_params)
    @vote = Vote.create!(
        # :voter => current_user.id,
        # :fight => Fight.find_by_id(vote_params[:fight]),
        # :user => User.find_by_id(vote_params[:user]),
      )
  end
end
