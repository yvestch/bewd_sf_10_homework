# Here is my rise_of_robot
require 'pry'
require 'pry-byebug'

#the keyword self denotes that the method ... is being defined in the context
# of the Class itself, not its instances. Any method definition without the
#self qualifier is by default an instance method.


class ProductManagementTeam # define a class & following the capitelization convention
  attr_accessor :product_manager, :software_engineer, :ux_designer
  #
  def initialize(product_manager,software_engineer,ux_designer)
  #
    @product_manager = product_manager
    @software_engineer = software_engineer
    @ux_designer = ux_designer

  end

  def self.random_tools
    product_management_tools =["Flurry","JIRA", "gotomeenting.com"]
    software_tools = ["Macbook","Ruby","compiler"]
    ux_tools =["Adobe photoshop","Weebly"]

    product_manager = product_management_tools.sample
    software_engineer = software_tools.sample
    ux_designer = ux_tools.sample

    product_management_tools = ProductManagementTeam.new(product_manager,software_engineer,ux_designer)
    puts "In a Product management team, the Product Manager uses tools such as #{product_manager} to collaborate with the Software Engineers who use #{software_engineer}.  \n"
    puts "UX Designers are also part of the team and they use #{ux_designer} in their daily work. \n "
    puts "#{product_management_tools.management_style} \n"
    puts "#{product_management_tools.product_type}"
  end
  def self.repeat_tools(number)
      repeat_tool = number.to_i
      repeat_tool.times do
        ProductManagementTeam.random_tools
      end
  end
  def management_style
    "You are probably using SCRUM methodology" if product_manager == "JIRA"
  end
  def product_type
    if product_manager == "Flurry"
      puts " I bet your team is working on a mobile app "
    else
      puts "Seriously! Your team needs to decide on its mobile strategy"
    end
  end




end

ProductManagementTeam.repeat_tools(10)
