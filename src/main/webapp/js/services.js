var restorantServices = angular.module('restorantServices', []);

restorantServices.factory('Restaurant', ['$resource',
  function($resource){
    return $resource('http://localhost:8080/findrestaurants');
}]);
