class TodoListsController < ApplicationController
    before_action :set_todo_list, only: %i[ show edit update destroy ]

    def index
        @todo_lists = current_user.todo_lists
    end

    def show
        @todo_item = @todo_list.todo_items.build 
    end

    def new
        @todo_list = current_user.todo_lists.build
    end

    def edit
    end

    def create
        @todo_list = current_user.todo_lists.build(todo_list_params)

        if @todo_list.save
        redirect_to @todo_list, notice: "Lista criada com sucesso."
        else
        render :new, status: :unprocessable_entity
        end
    end

    def update
        if @todo_list.update(todo_list_params)
        redirect_to @todo_list, notice: "Lista atualizada."
        else
        render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @todo_list.destroy
        redirect_to todo_lists_path, notice: "Lista excluída."
    end

    private
        def set_todo_list
        @todo_list = current_user.todo_lists.find(params[:id])
        end

        def todo_list_params
        params.require(:todo_list).permit(:title, :description, :color)
        end
    end
