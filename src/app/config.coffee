config = ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise('/index/main')
  
  $stateProvider
    .state 'index',
      abstract: true
      url: "/index"
      templateUrl: "components/common/content.html"
    .state 'index.main',
      url: "/main"
      templateUrl: "app/main/main.html"

angular
  .module('todoapp')
  .config(config)
  .run ($rootScope, $state) ->
    $rootScope.$state = $state
