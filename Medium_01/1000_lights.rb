# You have a bank of switches before you numbered from 1 to 1000. Each switch is connected to exactly one light that is initially off. You walk down the row of switches, and turn every one of them on. Then, you go back to the beginning and toggle switches 2, 4, 6, and so on. Repeat this for switches 3, 6, 9, and so on, and keep going until you have been through 1000 repetitions of this process. Write a program that determines which lights are on at the end.

# Further Exploration
=begin
There are a few interesting points about this exercise that we can explore:

 - Do you notice the pattern in our answer? Every light that is on is a perfect square. Why is that?
 - What are some alternatives for solving this exercise? What if we used an Array to represent our 1000 lights instead of a Hash, how would that change our code?
 - We could have a method that replicates the output from the description of this problem(i.e. "lights 2, 3, and 5 are now off; 1 and 4 are on.") How would we go about making that method?
=end

# Initial Solution
def light_switches(lights)
  switch_numbers = lights.keys
  switch_numbers.each do |round|
    1.upto(lights.length) do |num|
      lights[num] = !lights[num] if num % round == 0
    end
    announce_lights(lights, round)
  end
lights.select { |num, status| status == true }.keys
end

# Further Exploration
def announce_lights(lights, round)
  lights_on = lights.select { |num, status| status == true }.keys
  lights_off = lights.select { |num, status| status == false }.keys
  puts "Round #{round} lights on: #{lights_on.join(', ')}"
  puts "Round #{round} lights off: #{lights_off.join(', ')}"
end

# Example
=begin
Example with 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4.

With 10 lights, 3 lights are left on: lights 1, 4, and 9.
=end

lights = {}
1.upto(1000) { |num| lights[num] = false }
p light_switches(lights)