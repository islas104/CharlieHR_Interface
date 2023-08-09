require 'json'
require 'date'

class CharlieMenu
  def initialize(user)
    @user = user
  end

  def to_json
    menu = []

    # Add menu items
    menu << { "title" => "Chat", "url" => "#chat" }
    menu << { "title" => "Help", "url" => "/help" }
    menu << { "title" => "Product Roadmap", "url" => "https://roadmap.charliehr.com" }
    menu << { "title" => "What's New", "url" => "/whats_new" }

    # Determine hat details based on user information
    hat_image, hat_message, hat_url = get_hat_details

    # Create JSON representation
    json_data = {
      "hat" => {
        "image" => hat_image,
        "message" => hat_message
      },
      "menu" => menu
    }

    JSON.generate(json_data, indent: ' ')
  end

  def get_hat_details
    current_date = Date.today
    birthdate = @user["birthdate"]
    work_anniversary = @user["work_anniversary"]

    if birthdate && birthdate.month == current_date.month && birthdate.day == current_date.day
      return "static.charliehr.com/hats/party.png", "Happy birthday!", "static.charliehr.com/hats/party.png"
    elsif work_anniversary && work_anniversary.month == current_date.month && work_anniversary.day == current_date.day
      return "static.charliehr.com/hats/party.png", "Happy work anniversary!", "static.charliehr.com/hats/party.png"
    elsif current_date.month == 10 && current_date.day == 31
      return "static.charliehr.com/hats/witch.png", "Boo!", "static.charliehr.com/hats/witch.png"
    elsif current_date.month == 12 && current_date.day == 25
      return "static.charliehr.com/hats/santa.png", "Merry Christmas!", "static.charliehr.com/hats/santa.png"
    else
      return "static.charliehr.com/hats/none.png", nil, "static.charliehr.com/hats/none.png"
    end
  end
end
