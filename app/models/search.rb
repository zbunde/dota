class Search < Struct.new(:name)
	def heroes
		@heroes = Hero.where("name ILIKE ?", "%#{name}%")
	end
end