class GooddeedsController < ApplicationController
    def index 
     @gooddeeds = Gooddeed.all 
    #because this is an api, render json 
    #for that json, render the gooddeeds 
    #anytime someone makes a request, json representation of good deeds
    render json: @gooddeeds, status: 200 
end 

def show
    @gooddeed = Gooddeed.find(params[:id])
    render json: @gooddeed, status: 200
end 

def create
    @gooddeed = Gooddeed.create(gooddeed_params)
    render json: @gooddeed, status: 200
end 


def update
    @gooddeed = Gooddeed.find(params[:id]) 
    if @gooddeed.update(gooddeed_params)
    render json: @gooddeed, status: 200
    #else 
     #render  error 
       end 
   end 

def destroy 
    @gooddeed = Gooddeed.find(params[:id])
    if @gooddeed.destroy 
    render json: {gooddeedId: @gooddeed.id}
    end 
end 


private 
def gooddeed_params 
    params.require(:gooddeed).permit(:body)
    end 
end 