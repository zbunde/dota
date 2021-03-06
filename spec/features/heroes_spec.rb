require 'spec_helper'
images_path = Rails.root.join("hero_images")


feature 'user' do
  before do

    Hero.create! [
                   thumbnail: open(images_path.join("abaddon.png")),
                   number: 1,
                   name: "Abbadon",
                   hero_type: "Support",
                   summary: "Abbadon the Lord of Avernus is a melee strength Hero known as one of the most versatile characters in Dota due to his rather low mana dependence, short spell cooldowns and a large number of viable item choices. His ability to help sustain his allies and himself plus his strong tower diving capacity give him solid lane presence. Many of his abilities offer a large sum of utility, which makes him a strong support Hero. Mist Coil serves as both a single target nuke and heal that helps shift the sustainability of both allied and enemy heroes in a lane at his will, though sacrificing a portion of his own health. Aphotic Shield holds as one of the most useful abilities in the game, able to shield a target from some damage while also able to reflect said damage to a huge area. The most important aspect is how it is able to dispel many status effects such as slows and stuns. His other abilities allow him to become a mix between a semi-carry and tank. Abaddon's passive, Curse of Avernus, allows his attacks to not only slow down his enemy, but also increase the attack and movement speed of any ally attacking the same target. With his ultimate, Borrowed Time, Abaddon is able to shift all non-HP removal damage he receives into health. When not on cooldown, Borrowed Time may activate passively when his health falls under a certain threshold, even under the most dire situations. Due to his powerful spells and versatility, Abaddon is an excellent addition to any team."
                 ]
  end

  scenario 'user can add,show, edit and delete a hero' do
    visit '/'
    click_on 'All Heroes'

    click_on 'Add Hero'
    fill_in 'hero_name', :with => 'New Hero'
    fill_in 'hero_summary', :with => 'Summary'
    select 'Support', :from => 'hero_hero_type'
    click_on 'Save'
    click_on 'Back'

    click_on ('New Hero')
    expect(page).to have_content 'New Hero'
    expect(page).to have_content 'Support'


    click_on 'Edit'
    fill_in 'hero_name', :with => 'New Name'
    fill_in 'hero_summary', :with => 'New Summary'
    select 'Carry', :from => 'hero_hero_type'
    click_on 'Save'
    expect(page).to have_content 'New Name'
    expect(page).to have_content 'New Summary'
    expect(page).to have_content 'Carry'

    click_on 'Delete'
    expect(page).to have_no_content 'New Name'
  end

  scenario 'User cannot add hero with the name or summary empty' do
    visit '/'
    click_on 'All Heroes'

    click_on 'Add Hero'
    fill_in 'hero_name', :with => ''
    fill_in 'hero_summary', :with => 'Summary'
    select 'Support', :from => 'hero_hero_type'
    click_on 'Save'
    expect(page).to have_content "Name can't be blank"

    fill_in 'hero_name', :with => 'New Hero'
    fill_in 'hero_summary', :with => ''
    select 'Support', :from => 'hero_hero_type'
    click_on 'Save'
    expect(page).to have_content "Summary can't be blank"

  end
end