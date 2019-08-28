const initAlgoliaPlace = () => {
    const cityInput = document.querySelector('#city_name')
    if (cityInput)
    {
      (function() {
      var placesAutocomplete = places({
      appId: 'plYFJUPHB8RA',
      apiKey: '0aae530d2bec954c6acde75541446e7d',
      container: document.querySelector('#city_name'),
      templates: {
        value: function(suggestion) {
          return suggestion.name;
        }
      }
    }).configure({
      type: 'city',
      aroundLatLngViaIP: false,
    });
  })();

  (function() {
    var placesAutocomplete = places({
      appId: 'plYFJUPHB8RA',
      apiKey: '0aae530d2bec954c6acde75541446e7d',
      container: document.querySelector('#city_country_city'),
      templates: {
        suggestion: function(suggestion) {
          return '<i class="flag ' + suggestion.countryCode + '"></i> ' +
            suggestion.highlight.name;
        }
      }
    }).configure({
      type: 'country',
    });
  })();
    }
}

export { initAlgoliaPlace }
