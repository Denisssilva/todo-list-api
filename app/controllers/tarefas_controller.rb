class TarefasController < ApplicationController
  before_action :set_tarefa, only: %i[ show update destroy ]

  # GET /tarefas
  # GET /tarefas.json
  def index
    @tarefas = Tarefa.all
  end

  # GET /tarefas/1
  # GET /tarefas/1.json
  def show
  end

  # POST /tarefas
  # POST /tarefas.json
  def create
    @tarefa = Tarefa.new(tarefa_params)

    if @tarefa.save
      render :show, status: :created, location: @tarefa
    else
      render json: @tarefa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tarefas/1
  # PATCH/PUT /tarefas/1.json
  def update
    if @tarefa.update(tarefa_params)
      render :show, status: :ok, location: @tarefa
    else
      render json: @tarefa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tarefas/1
  # DELETE /tarefas/1.json
  def destroy
    @tarefa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarefa
      @tarefa = Tarefa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarefa_params
      params.require(:tarefa).permit(:descricao, :finalizada)
    end
end
