class UploadController < ApplicationController
	before_filter :allow_iframe_requests
	def new
		@ad_url = AdUrl.new
	end

	def create
		ad_url = AdUrl.new(url_params)
    ad_url.save!

    session[:ad_url] = session[:ad_url].to_s + "<br >http://" + request.host + "/" + ad_url.file.store_dir + "/" + ad_url.file.filename
    redirect_to new_upload_path 
	end

	private

	def url_params
    params.require(:ad_url).permit(:file)
  end

  def allow_iframe_requests
	  response.headers.delete('X-Frame-Options')
	end
end
