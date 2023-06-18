
puts "Cadastro de moedas..."

coins = [
    { description: 'Bitcoin',
      acronym:"BTC",
      url_image: "https://w7.pngwing.com/pngs/450/133/png-transparent-bitcoin-cryptocurrency-virtual-currency-decal-blockchain-info-bitcoin-text-trademark-logo.png" },

    { description:"Ethereum",
      acronym: 'ETH',
      url_image: 'https://w7.pngwing.com/pngs/368/176/png-transparent-ethereum-cryptocurrency-blockchain-bitcoin-logo-bitcoin-angle-triangle-logo-thumbnail.png' },

    { description: "Dosh",
      acronym: 'ETH',
      url_image: 'https://cdn.freebiesupply.com/logos/large/2x/dash-3-logo-png-transparent.png'}
  ]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

puts "Moedas cadastradas com sucesso"

