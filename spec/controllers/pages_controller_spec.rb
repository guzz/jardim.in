require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      visit '/pages/home' 
      page.should have_content('O Jardim')
    end

    it "should have the right title" do
      visit '/pages/home'
      find('title').native.text.should have_content("Jardins Suspensos")
    end
  end

  describe "GET 'contato'" do
    it "returns http success" do
      visit '/pages/contato'
      page.should have_content('Entre em contato...')
    end

    it "should have the right title" do
      visit '/pages/contato'
      find('title').native.text.should have_content("Jardins Suspensos | Contato")
    end
  end

  describe "GET 'sobre'" do
    it "returns http success" do
      visit '/pages/sobre'
      page.should have_content('Quem Somos?')
    end

    it "should have the right title" do
      visit '/pages/sobre'
      find('title').native.text.should have_content("Jardins Suspensos | Sobre")
    end
  end
end