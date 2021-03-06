class UsersController < ApplicationController
	def new
		@user=User.new
	end

	def create
		# binding.pry
		@user=User.new(user_params)
		
   if @user.save
     redirect_to user_list_path
   else
   render 'new'
   end
end

 def profile
   @user=User.find_by_id(params[:id])
 end

 def project
 end
 
 def show
  @user=User.find_by_id(params[:id])
  redirect_to user_profile_path
 end

	def index
		@users=User.all
end

def edit
	@user=User.find_by_id(params[:id])

end

def update
	@user=User.find_by_id(params[:id])
			@user.update_attributes(user_params)
			redirect_to user_list_path
	end

	def destroy
			@user=User.find_by_id(params[:id])
			@user.destroy
			redirect_to user_list_path
	end
	private
	def user_params
		params.require(:user).permit(:firstname,:lastname,:email,:password)
end
end
