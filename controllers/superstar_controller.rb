class SuperstarController < ApplicationController

  get '/' do
    # get all
    Superstar.all.to_json
  end

  get '/:id' do
    @id = params[:id]
    Superstar.find(@id).to_json
    # get by id
  end

  post '/' do
    # create
    @name = params[:name]
    @talent = params[:talent]
    @outfit = params[:outfit]

    @model = Superstar.new
    @model.name = @name
    @model.talent = @talent
    @model.outfit = @outfit
    @model.save

    # place a breakpoint in ruby!
    # binding.pry
    # ^ the code stops here
    @model.to_json
  end

  patch '/:id' do
    # update
    @id = params[:id]
    @name = params[:name]
    @talent = params[:talent]
    @outfit = params[:outfit]
    @model = Superstar.find(@id)
    @model.name = @name
    @model.talent = @talent
    @model.outfit = @outfit
    @model.save
    @model.to_json
  end

  delete '/:id' do
    # delete
    @id = params[:id]
    @model = Superstar.find(@id)
    @model.destroy
    { :message => "Item of id " + @id + " was removed."}.to_json
  end


  # get '/fab' do
  #   # teach you how to rule the database
  #   # activerecord because it is awesome
  #   # create
  #   @christopher = Superstar.new
  #   @christopher.talent = 'Socialiate'
  #   @christopher.name = 'Christopher McAwesome'
  #   @christopher.outfit = 'blue sweater'
  #   @christopher.save
  #   @christopher.to_json
  #   # crud
  #   # delete
  #   # update
  #   # read
  # end

end