require 'spec_helper'

describe Draft do

  before do
    @user1 = User.new
    @user2 = User.new
    @starting_heroes = 10.times.map { |n| Hero.new(name: "test#{n}") }
  end

  it 'tracks the bans for each user' do
    sut = Draft.new(@user1, @user2)

    sut.ban_for_user1(@starting_heroes.first)
    sut.ban_for_user2(@starting_heroes.second)

    expect(sut.bans_for_user1).to include(@starting_heroes.first)
    expect(sut.bans_for_user2).to include(@starting_heroes.second)

  end
  it 'does not advance if user2 does not provide ban' do
    sut = Draft.new(@user1, @user2)
    sut.ban_for_user1(@starting_heroes.first)
    expect(sut.advance?).to eq false
  end

  it 'does not allow user 2 to ban a hero user 1 banned and does not allow advance' do
    sut = Draft.new(@user1, @user2)
    hero_to_ban = @starting_heroes.first
    sut.ban_for_user1(hero_to_ban)
    sut.ban_for_user2(hero_to_ban)

    expect(sut.bans_for_user2).to_not include(hero_to_ban)
    expect(sut.advance?).to eq false
  end

  it 'allows another user to pick a different hero' do
    sut= Draft.new(@user1, @user2)

    sut.pick_for_user1(@starting_heroes.first)
    sut.pick_for_user2(@starting_heroes.second)

    expect(sut.picks_for_user1).to include @starting_heroes.first
    expect(sut.picks_for_user2).to include @starting_heroes.second
    expect(sut.advance?).to eq true
  end

end