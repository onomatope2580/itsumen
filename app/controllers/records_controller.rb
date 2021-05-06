class RecordsController < ApplicationController
  require 'date'

  def index
  end

  def new
    @today = Date.today
    @record = Record.new
  end

  def create
  end

end
