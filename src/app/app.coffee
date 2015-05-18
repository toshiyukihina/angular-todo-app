angular.module 'todoapp', [
  'ngAnimate'
  'ngCookies'
  'ngTouch'
  'ngSanitize'
  'ngResource'
  'ui.router'
  'ui.bootstrap'
  ]
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state 'index',
        abstract: true
        url: "/index"
        templateUrl: "components/common/content.html"
      .state 'index.main',
        url: "/main"
        templateUrl: "app/main/main.html"

    $urlRouterProvider.otherwise('/index/main')
