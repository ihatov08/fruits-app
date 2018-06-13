# frozen_string_literal: true

class Api::V1::FruitsController < ApplicationController
  def index
    render json: Fruit.all
  end

  def create
    fruit = Fruit.create(fruit_params)
    render json: fruit
  end

  def update
    fruit = Fruit.find(params[:id])
    fruit.update(fruit_params)
    render json: fruit
  end

  def destroy
    fruit = Fruit.find(params[:id])
    fruit.destroy
    render json: fruit
  end

  private

  def fruit_params
    params.require(:fruit).permit(:id, :name, :description)
  end
end
