class Admin < Person
  def has_permission?(area)
    true
  end

  def roles
    ['home', 'dashboard', 'pricing']
  end
end
