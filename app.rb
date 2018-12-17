require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params[:name].to_s
    @coach = params[:couch].to_s
    @pg = params[:pg].to_s
    @sg = params[:sg].to_s
    @sf = params[:sf].to_s
    @pf = params[:pf].to_s
    @c = params[:c].to_s
    erb :team
  end
end
