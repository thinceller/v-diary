class StaticPagesController < ApplicationController
  def index
    render html: "Hello World."
  end
end
