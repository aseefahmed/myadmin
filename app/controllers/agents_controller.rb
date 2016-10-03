class AgentsController < ApplicationController
  def index
    @agents = Agent.all
    @agent = Agent.new
  end

  def create
    @agent = Agent.create(agent_params)

    if @agent.save
      flash[:notice] = "You have successfully created a buyer"
      redirect_to agents_path
    end
  end


  private

  def agent_params
    params.require(:agent).permit(:agent_name, :image)
  end
end
