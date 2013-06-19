class PagesController < ApplicationController
  
  def home
  end

  def contato
  	@title = "Contato"
  end

  def sobre
  	@title = "Sobre"
  end
end
