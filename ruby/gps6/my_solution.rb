# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  attr_reader :state , :population, :population_density
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Instance method to calculate predicted death and outbreak speed
  def virus_effects
    predicted_deaths
    #delete the passing arguments, not necessary since all of them are instance variable
    #(@population_density, @population, @state)
    speed_of_spread
    #this one too
    #(@population_density, @state)
  end

  private

  #Instance method to calculate just the predicted death
  def predicted_deaths

    #(population_density, population, state) <--- deleted, not necessary
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Instance method to calculate just the outbreak speed
  def speed_of_spread
    #(population_density, state) <---- deleted, not necessary
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#Iterate the STATE_DATA constant
#Create instance based on the Key = state and Value = state data
#Use instance method to print out the report
STATE_DATA.each do |state_name, st_data|
    state_instance = VirusPredictor.new(state_name, st_data[:population_density], st_data[:population])
    state_instance.virus_effects
end   


#=======================================================================
# Reflection Section