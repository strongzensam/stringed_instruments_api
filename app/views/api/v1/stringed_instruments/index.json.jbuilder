json.array! @stringed_instruments.each do |stringed_instrument|
  json.name stringed_instrument.name
  json.stringed_instrument_id stringed_instrument.id
  json.number_of_strings stringed_instrument.number_of_strings
  json.tuning stringed_instrument.tuning
  json.tuning stringed_instrument.tuning
  json.fretless stringed_instrument.fretless
  json.body_type stringed_instrument.body_type
end