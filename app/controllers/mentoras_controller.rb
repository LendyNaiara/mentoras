class MentorasController < ApplicationController
  def index
    @mentoras = Mentora.all
  end

  def show
    @mentora = Mentora.find(params[:id])
  end

  def new
    @mentora = Mentora.new
  end

  def create
    @mentora = Mentora.new(mentora_params)

    if @mentora.save
      redirect_to @mentora
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def mentora_params
      params.expect(mentora: [ :nome, :email, :habilidades, :contato ])
    end
end
