if (Meteor.isClient) {
  var myModule = angular.module('channel', ['angular-meteor'])
  .controller('postsCtrl',function($scope){
    $scope.name = 'world'
  })
}
