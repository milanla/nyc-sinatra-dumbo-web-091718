class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    # display all the figures
    @figures = Figure.all
    erb :"/figures/index"
  end

  get '/figures/new' do
    @figures = Figure.all
    @titles = Title.all
    @landmarks = Landmark.all
    # binding.pry
    erb :"/figures/new"
  end

  post '/figures' do
    # binding.pry
    @figure = Figure.create(name: params[:figure][:name])
    @title = Title.create(name: params[:figure][:title])
    @new_landmark = Landmark.create(name: params[:landmark][:name], year_completed: params[:landmark][:year_completed])

    erb :"/figures/show"
  end


end
