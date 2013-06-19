require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      visit '/' 
      page.should have_content('O Jardim')
    end

    it "should have the right title" do
      visit '/'
      find('title').native.text.should have_content("Jardins Suspensos")
    end
  end

  describe "GET 'contato'" do
    it "returns http success" do
      visit '/contato'
      page.should have_content('Entre em contato...')
    end

    it "should have the right title" do
      visit '/contato'
      find('title').native.text.should have_content("Jardins Suspensos | Contato")
    end
  end

  describe "GET 'sobre'" do
    it "returns http success" do
      visit '/sobre'
      page.should have_content('Quem Somos?')
    end

    it "should have the right title" do
      visit '/sobre'
      find('title').native.text.should have_content("Jardins Suspensos | Sobre")
    end
  end
end