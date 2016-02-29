var restorantControllers = angular.module('restorantControllers', []);

restorantControllers.controller('RestaurantCtrl', ['$scope', 'Restaurant', function ($scope, Restaurant) {
  $scope.findRestaurants = function(q) {
    $scope.restaurants = Restaurant.query({'q': q})
  }
}]);
