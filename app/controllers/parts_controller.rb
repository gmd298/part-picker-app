class PartsController < ApplicationController

  # GET: /parts
  get "/parts" do
    Part.all.to_json
  end

  # POST: /parts
  post "/parts" do
    request.body.rewind
    data = JSON.parse request.body.read
    part = Part.create(data)
    part.to_json
  end

  # GET: /parts/5
  get "/parts/:id" do
    part = Part.find(params[:id])
    part.to_json
  end


  # PATCH: /parts/5
  patch "/parts/:id" do
    part = Part.find(params[:id])
    part.update(
      name:params[:name],
      price:params[:price],
      attachment:params[:attachment]
    )
    part.to_json
  end

  # DELETE: /parts/5/delete
  delete "/parts/:id" do
    part = Part.find(params[:id])
    part.destroy
    part.to_json
  end
end
