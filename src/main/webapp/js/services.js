var restorantServices = angular.module('restorantServices', []);

restorantServices.factory('Restaurant', ['$resource',
  function($resource){
    return $resource('/api/findrestaurants');
}]);
