class PagesController < ApplicationController

  def home
    render template: "pages/#{params[:page]}"
  end

  def about
    render template: "pages/#{params[:page]}"
  end

  def find
    render template: "pages/#{params[:page]}"
  end

  def learn
    render template: "pages/#{params[:page]}"
  end

  def blog
    render template: "pages/#{params[:page]}"
  end

end
