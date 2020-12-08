class TodosController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @todo = @list.todos.build
  end
end
