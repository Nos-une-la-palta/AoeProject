class HomeController < ApplicationController
  def index
    @tournaments = Tournament.all
    @news = News.all
    @twitches = Twitch.all
    @clans= Clan.all
    @user = current_user
    
    totalitems = Tournament.all + News.all
    @items = totalitems.sort_by do |item| item.created_at end
      
  end
end
