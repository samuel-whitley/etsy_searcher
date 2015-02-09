
class EtsyController < ApplicationController
  def search
    
    data = Etsy::Request.get('/listings/active', :includes => ['Images', 'Shop'], keywords: params[:q])
     @response = JSON.parse(data.body)['results']
     binding.pry
    #@response = @response.to_json
    #@response = JSON.parse(@repsonse)
    
  end
end
