class HomeController < ApplicationController
  def index
    @tournaments = Tournament.all
    @news = News.all
  end
end
