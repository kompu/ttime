class TagsController < ApplicationController
	before_action :set_task

	def create
		@tag = @task.tags.create(tag_params)
		redirect_to @task
	end

	def destroy
		@tag = @task.tags.find(params[:id])
		if @tag.destroy
			flash[:success] = "tag was deleted."
		else
			flash[:error] = "tag could not be deleted."
		end
		redirect_to @task
	end

	private

	def set_task
		@task = Task.find(params[:task_id])
	end

	def tag_params
		params[:tag].permit(:title)
	end
end
