require 'nokogiri'
require 'open-uri'
require 'amazing_print'

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    # @recipes = @recipes.where(cereal: params[:cereal]) if params[:cereal].present?
  end

  def rice
    url = 'https://www.allrecipes.com/search/?wt=rice'
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    @recipes = doc.search('.fixed-recipe-card').first(12).map do |element|
      {
        name: element.search('span.fixed-recipe-card__title-link').text,
        description: element.search('.fixed-recipe-card__description').text,
        image_url: element.search('.fixed-recipe-card__img').attr('data-original-src').text,
        url: element.search('a.fixed-recipe-card__title-link').attr('href').text,
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
    url = 'https://www.allrecipes.com/search/?wt=wheat'
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    @recipes = doc.search('.fixed-recipe-card').first(12).map do |element|
      {
        name: element.search('span.fixed-recipe-card__title-link').text,
        description: element.search('.fixed-recipe-card__description').text,
        image_url: element.search('.fixed-recipe-card__img').attr('data-original-src').text,
        url: element.search('a.fixed-recipe-card__title-link').attr('href').text,
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
    url = 'https://www.allrecipes.com/search/?wt=corn'
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    @recipes = doc.search('.fixed-recipe-card').first(12).map do |element|
      {
        name: element.search('span.fixed-recipe-card__title-link').text,
        description: element.search('.fixed-recipe-card__description').text,
        image_url: element.search('.fixed-recipe-card__img').attr('data-original-src').text,
        url: element.search('a.fixed-recipe-card__title-link').attr('href').text,
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
