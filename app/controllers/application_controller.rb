class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get '/' do
    categories = Category.all
    categories.to_json
  end

  get '/:id' do
    category = Category.find(params[:id])
    exercise = category.exercises
    exercise.to_json
  end


end
