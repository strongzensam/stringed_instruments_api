(function(){
  "use strict";

  angular.module("app").controller("stringedInstrumentCtrl", function($scope, $http){
    $scope.setup = function(){
      $http.get("/api/v1/stringed_instruments.json").then(
        function(response){
        $scope.stringedInstruments = response.data;
        console.log(response.data);

        });
    }
    $scope.addStringedInstrument = function(newStringedInstrument){
      // stringed_instrument.name = newStringedInstrument.name
      // stringed_instrument.number_of_strings = newStringedInstrument.number_of_strings
      // stringed_instrument.tuning = newStringedInstrument.tuning
      // stringed_instrument.fretless = newStringedInstrument.fretless
      // stringed_instrument.body_type = newStringedInstrument.body_type
      console.log("Im running");
      $http.post("/api/v1/stringed_instruments.json", newStringedInstrument).then(function(response){
        var stringedInstrumentCallback = response.data;
        $scope.stringedInstruments.push(stringedInstrumentCallback);
        console.log("happy");
      });
    }

    $scope.toggleOrder = function(attribute){
      if(attribute === $scope.orderAttribute){
        $scope.direction = !$scope.direction;
      } else {
        $scope.direction = false;
      }
      $scope.orderAttribute = attribute;
    }


    // $scope.lookup = function(stringedInstrumentName){
    //   var arr = stringedInstrumentName.split("")
    //   for(var i = 0; i = arr.length; i++){
    //     if($scope.stringedInstruments.indexOf(arr[i]) === $scope.stringedInstruments.name){
    //       return $scope.stringedInstruments.name;
    //     }
    //   }
    // }

    window.$scope = $scope
  });
}());