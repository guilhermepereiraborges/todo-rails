class TodoItemsController < ApplicationController
  before_action :set_todo_list
  before_action :set_todo_item, only: %i[ edit update destroy complete ]

  def create
    @todo_item = @todo_list.todo_items.build(todo_item_params)

    if @todo_item.save
      redirect_to @todo_list, notice: "Item adicionado."
    else
      redirect_to @todo_list, alert: "Erro ao adicionar item."
    end
  end

  def edit
  end

  def update
    if @todo_item.update(todo_item_params)
      redirect_to @todo_list, notice: "Item atualizado."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @todo_item.destroy
    redirect_to @todo_list, notice: "Item removido."
  end

  def complete
    @todo_item.update(completed: !@todo_item.completed)
    redirect_to @todo_list
  end

  private
    def set_todo_list
      @todo_list = current_user.todo_lists.find(params[:todo_list_id])
    end

    def set_todo_item
      @todo_item = @todo_list.todo_items.find(params[:id])
    end

    def todo_item_params
      params.require(:todo_item).permit(:content, :due_date, :priority, :completed)
    end
end