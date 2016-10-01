class AgentController < ApplicationController
  def index
    @agents = Agent.all
  end
end
