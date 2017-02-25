class FixPhoneNumbers < ActiveRecord::Migration[5.0]
  def up
    Player.all.find_each do |player|
      player.pog1_phone1  = add_zero_to player.pog1_phone1
      player.pog1_phone2  = add_zero_to player.pog1_phone2
      player.pog2_phone1  = add_zero_to player.pog2_phone1
      player.pog2_phone2  = add_zero_to player.pog2_phone2
      player.ec_phone1    = add_zero_to player.ec_phone1
      player.ec_phone2    = add_zero_to player.ec_phone2
      player.save
    end
  end

  def down
  end

  def add_zero_to(phone_number)
    return phone_number unless phone_number && %w(7 2).include?(phone_number[0])
    puts phone_number
    "0#{phone_number}"
  end
end
