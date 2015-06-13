if Meteor.isClient
  myModule = angular.module('channel', [ 'angular-meteor' ]).controller('postsCtrl', ($scope) ->
    $scope.name = 'world!!!'
    return
  )
