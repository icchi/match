class HomeController < ApplicationController
  def index
    @workers = Worker.all
    @start_date = Date.current.beginning_of_year + 3.months
  end
end
