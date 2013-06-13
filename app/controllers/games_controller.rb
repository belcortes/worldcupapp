class GamesController < ApplicationController

  before_filter :ensure_admin, only: [:create, :update, :destroy]

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end
end