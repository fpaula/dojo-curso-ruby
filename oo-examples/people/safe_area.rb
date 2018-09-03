class SafeArea
  CURRENT_AREA = 'dashboard'

  # def self.allow?(person)
  #   person.has_permission?(CURRENT_AREA)
  # end

  def self.allow?(person)
    return true if person.is_a?(Admin)

    false
  end
end
