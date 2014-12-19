class Shout < ActiveRecord::Base
	belongs_to :user, :class_name => :User, :foreign_key => :user
	def self.create_shout(shout_params)
		shout = Shout.create(
			# :title => move_params[:title]
			# :time_start => Time.now,
			:text => shout_params[:text],
			:name => shout_params[:name],
			:twitter => shout_params[:twitter],
			:color => shout_params[:color]
		)
	    shout
	end
end
