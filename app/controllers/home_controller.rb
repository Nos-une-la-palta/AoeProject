class HomeController < ApplicationController
  def index
    @tournaments = Tournament.all
    @news = News.all
    @twitches = Twitch.all
  end
end
