# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.order(:name)
  end

  def show
    @book = Book.find(params[:id])
  end

  def about; end

  def category
    @category = Book.genre.order(:name)
  end
end
