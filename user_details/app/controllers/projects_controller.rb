class ProjectsController < ApplicationController
	def new
		@project=User.new
end
def create

	@project=User.new(project_params)
	@project.save
end
def index
	@projects=Project.all
end
private
	def project_params
		params.require(:project).permit(:name,:duration,:teamsize,:cost,:domain)
end
end