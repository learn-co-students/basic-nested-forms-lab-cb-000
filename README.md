In this lab I need to
[]Construct a nested params hash with data about the primary object and a belongs to and has many association.


[]Name form inputs correctly to create a nested params hash with belongs to and has many associated data.


[]Define a conventional association writer for the primary model to properly instantiate associations based on the nested params association data.
Pattern:
class Person < ActiveRecord::Base
  has_many :addresses
  accepts_nested_attributes_for :addresses

end

class PeopleController < ApplicationController
  def new
    @person = Person.new
    @person.addresses.build(address_type: 'work')
    @person.addresses.build(address_type: 'home')
  end


[]Define a custom association writer for the primary model to properly instantiate associations with custom logic (like unique by name) on the nested params association data.


[]Use fields_for to generate the association fields.

Pattern:
<%= form_for @person do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name %><br>

  <%= f.fields_for :addresses do |addr| %>
    <%= addr.label :street_address_1 %>
    <%= addr.text_field :street_address_1 %><br>

    <%= addr.label :street_address_2 %>
    <%= addr.text_field :street_address_2 %><br>

    <%= addr.label :city %>
    <%= addr.text_field :city %><br>

    <%= addr.label :state %>
    <%= addr.text_field :state %><br>

    <%= addr.label :zipcode %>
    <%= addr.text_field :zipcode %><br>

    <%= addr.label :address_type %>
    <%= addr.text_field :address_type %><br>
  <% end %>

  <%= f.submit %>
<% end %>





# Basic Nested Forms Lab

## Objectives

1. Construct a nested params hash with data about the primary object and a belongs to and has many association.
2. Name form inputs correctly to create a nested params hash with belongs to and has many associated data.
3. Define a conventional association writer for the primary model to properly instantiate associations based on the nested params association data.
4. Define a custom association writer for the primary model to properly instantiate associations with custom logic (like unique by name) on the nested params association data.
5. Use fields_for to generate the association fields.

## Data Model: Recipe with ingredients

The first data model we're going to be working with today is a recipe with ingredients.

  * Recipe
    * has many ingredients
    * title:string    
  * Ingredient
    * belongs to a recipe
    * ingredient.name: string
    * ingredient.quantity: string

The models and show routes and associations have been set up for you.

### Instructions

Build a recipe form that accepts two ingredients! It should automatically create the new `Ingredient` objects.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/basic-nested-forms-lab' title='Basic Nested Forms Lab'>Basic Nested Forms Lab</a> on Learn.co and start learning to code for free.</p>
