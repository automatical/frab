json.events @events do |event|
  json.partial! 'shared/event', event: event
  json.partial! 'shared/event_admin', event: event
end
