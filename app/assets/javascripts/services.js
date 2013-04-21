/* http://docs.angularjs.org/#!angular.service */

angular.service('Flashcards', function($resource) {
 return $resource('flashcards/:flashcard_id', {},
                  { 
                  	'index': { method: 'GET', isArray: true }
                  });
});

angular.service('Flashcard', function($resource) 
{
	return $resource('flashcards/:flashcard_id', {},
                    { 
                      'show': { method: 'GET' }
                  	});
});