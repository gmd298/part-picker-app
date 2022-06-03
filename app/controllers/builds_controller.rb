class BuildsController < ApplicationController

  # GET: /builds
  get "/builds" do
    Build.all.to_json
  end

  # POST: /builds
  post "/builds" do
    request.body.rewind
    data = JSON.parse request.body.read
    build = Build.create(data)
    build.to_json
  end

  # GET: /builds/5
  get "/builds/:id" do
    build = Build.find(params[:id])
  end

  # PATCH: /builds/5
  patch "/builds/:id" do
    request.body.rewind
    data = JSON.parse request.body.read
    build = Build.find(params[:id])
    build.update(data)
    build.to_json
  end

  # DELETE: /builds/5/delete
  delete "/builds/:id" do
    build = Build.find(params[:id])
    build.destroy
    build.to_json
  end
end
