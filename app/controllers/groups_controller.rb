class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def show
        @group = Group.find(params[:id])    
    end

    def new
        @group = Group.new
    end

    def create
        @group = current_user.groups.new(group_params)
        if @group.save
          redirect_to group_path(@group)
        else
          render :new, status: :unprocessable_entity
        end
    end

    private

    def group_params
        params.require(:group).permit(:name_group, :observation, :description_group, :photo)
    end

end
