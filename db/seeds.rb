images_path = Rails.root.join("hero_images")
Hero.create! \
  thumbnail: open(images_path.join("abaddon.png")),
  number: 1,
  name: "Abbadon",
  hero_type: "Support",
  summary: "Abaddon the Lord of Avernus is a melee strength Hero known as one of the most versatile characters in Dota due to his rather low mana dependence, short spell cooldowns and a large number of viable item choices. His ability to help sustain his allies and himself plus his strong tower diving capacity give him solid lane presence. Many of his abilities offer a large sum of utility, which makes him a strong support Hero. Mist Coil serves as both a single target nuke and heal that helps shift the sustainability of both allied and enemy heroes in a lane at his will, though sacrificing a portion of his own health. Aphotic Shield holds as one of the most useful abilities in the game, able to shield a target from some damage while also able to reflect said damage to a huge area. The most important aspect is how it is able to dispel many status effects such as slows and stuns. His other abilities allow him to become a mix between a semi-carry and tank. Abaddon's passive, Curse of Avernus, allows his attacks to not only slow down his enemy, but also increase the attack and movement speed of any ally attacking the same target. With his ultimate, Borrowed Time, Abaddon is able to shift all non-HP removal damage he receives into health. When not on cooldown, Borrowed Time may activate passively when his health falls under a certain threshold, even under the most dire situations. Due to his powerful spells and versatility, Abaddon is an excellent addition to any team."

Hero.create! \
  thumbnail: open(images_path.join("alchemist.png")),
  number: 2,
  name: "Alchemist",
  hero_type: "Support, Carry, Mid",
  summary: "Razzil Darkbrew the Alchemist is a melee strength hero who utilises his alchemical prowess as a strange but versatile fighter. He is an unusual carry based upon transmuting fallen enemies into large amounts of bonus gold, with both an early game and late game presence due to his large health pool and the first strike nature of his spells. His balanced statistics and the sure promise of gold for items means he can be one of the most disparately built heroes in the game. Unstable Concoction is his main contribution early on, dealing good damage and a lengthy stun. Acid Spray allows him to rapidly clear waves of creeps for his Greevil's Greed to contribute massive amounts of extra income. A well-equipped Alchemist can then use Chemical Rage to its fullest effect, as the incredible regeneration and base attack time reduction make it one of the best steroid abilities in the game."

Hero.create! \
  filename: open(images_path.join("ancient-apparition.png")),
  number: 3,
  name: "Ancient-Apparition",
  hero_type: "Support",
  summary: "Kaldr the Ancient Apparition is a ranged intelligence hero. This spell-caster elemental being possesses high range, great attributes and strong semi-spammable spells. He is commonly played as a ganker or support role and due to his high agility and an attack enhancing spell, he can be played as a Semi-Carry too. His ultimate is one of the most devastating spells in the game as it can hit multiple units, has global range, freezes health regeneration, and instantly kill units if low on life."

Hero.create! \
  filename: open(images_path.join("anti-mage.png")),
  number: 4,
  name: "Anti-Mage",
  hero_type: "Carry,",
  summary: "Anti-Mage is a fast melee Agility Carry with an emphasis on disabling and killing high-mana enemies. He has notably high agility and low base attack time, giving him high damage and scaling with his basic attacks. His signature ability is Mana Break, a passive attack modifier that makes him a huge threat to mana-reliant heroes, mainly Intelligence-based casters. In addition to granting substantial bonus damage on each attacks, its mana burn sets enemies up to be devastated by his ultimate ability, Mana Void. Blink is a highly versatile ability that allows Anti-Mage to instantly teleport short distances, thereby allowing him to escape, chase, and even farm with ease. Combined with his high base movement speed, this makes Anti-Mage a highly mobile hero at all points in the game. Spell Shield greatly increases Anti-Mage's magic resistance, allowing him to sustain more damage from enemy casters. Finally, Mana Void finishes off targets after their mana has been burnt, inflicting heavy damage to both the target and enemies surrounding the target. The damage Mana Void can potentially deal scales extremely well into the late game, as enemies' mana pools only grow larger over time. His naturally fast basic attacks combined with his powerful abilities make him extremely dangerous in the late game, allowing him to devastate enemies with ease if he is allowed to farm as a hard carry."

  
Hero.create! \
  filename: open(images_path.join("axe.png")),
  number: 5,
  name: "Axe",
  hero_type: "Carry,",
  summary: "Mogul Khan the Axe is a savage melee strength hero, infamous for creating chaos in battle and thriving off of it. He is commonly played as an initiator with a large semi-carry presence that quickly transitions into a support role later in the game. His fighting style demands that he gets up close and very personal. He can taunt enemies into targeting him and counters those who try to strike him with a sweeping Counter Helix that slashes all enemies at melee range. Axe has a tendency to draw opponents so deep in the fight that they do not have a chance to escape, each soul he draws infusing his own love of war; his ultimate, Culling Blade bolsters that talent with an attack that unconditionally kills a unit with low health."


