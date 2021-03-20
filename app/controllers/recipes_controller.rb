require 'nokogiri'
require 'open-uri'
require 'amazing_print'

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def rice
    url = 'https://www.allrecipes.com/search/results/?search=rice'
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    @recipes = doc.search('.card__recipe').first(12).map do |element|
      {
        name: element.search('.card__title').text,
        description: element.search('.card__summary').text,
        image_url: element.search('.lazy-image').attr('data-src').text,
        url: element.search('a.card__titleLink').attr('href').text,
        cereal: 'rice'
      }
    end
    @display_result = @recipes.map do |recipe| {
      card: render_to_string(partial: 'recipe_card', locals: { recipe: recipe })
    }
    end
    render json: @display_result.to_json
  end

  def wheat
    url = 'https://www.allrecipes.com/search/results/?search=wheat'
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    @recipes = doc.search('.card__recipe').first(12).map do |element|
      {
        name: element.search('.card__title').text,
        description: element.search('.card__summary').text,
        image_url: element.search('.lazy-image').attr('data-src').text,
        url: element.search('a.card__titleLink').attr('href').text,
        cereal: 'wheat'
      }
    end
    @display_result = @recipes.map do |recipe| {
      card: render_to_string(partial: 'recipe_card', locals: { recipe: recipe })
    }
    end
    render json: @display_result.to_json
  end

  def corn
    url = 'https://www.allrecipes.com/search/results/?search=corn'
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    @recipes = doc.search('.card__recipe').first(12).map do |element|
      {
        name: element.search('.card__title').text,
        description: element.search('.card__summary').text,
        image_url: element.search('.lazy-image').attr('data-src').text,
        url: element.search('a.card__titleLink').attr('href').text,
        cereal: 'corn'
      }
    end
    @display_result = @recipes.map do |recipe| {
      card: render_to_string(partial: 'recipe_card', locals: { recipe: recipe })
    }
    end
    render json: @display_result.to_json
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :image_url, :url, :cereal)
  end
end
