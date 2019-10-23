# frozen_string_literal: true

class PublishersController < ApplicationController
  def index
    @publishers = Publisher.order(:name).page(params[:page])
  end

  def show
    @publisher = Publisher.find(params[:id])
  end
end
