# Lista de carros
vehicles = {
  'Hyundai' => ['HB20', 'Creta'],
  'Fiat' => ['Argo', 'Uno'],
  'VW' => ['Gol'],
  'error' => 10
}

# Métodos próprios de hash
vehicles.keys
vehicles.values

# Acessando os itens
vehicles['Fiat']

vehicles.each do |make, models|
end
