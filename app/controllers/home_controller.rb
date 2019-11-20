class HomeController < ApplicationController
  def index
    @tournaments = Tournament.all
    @news = News.all
    @twitches = Twitch.all
    @clans= Clan.all
    @user = current_user
  end
end
