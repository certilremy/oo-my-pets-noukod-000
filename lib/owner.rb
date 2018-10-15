require 'pry'

class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name,:pets

  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
    @species="human"
    @pets = {:fishes:=>[],:dogs=>[],:cats=>[]}
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all=[]
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
    #binding.pry
  end