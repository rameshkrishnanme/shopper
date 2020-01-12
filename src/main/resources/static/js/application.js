var moveBckward = false;

var app = angular.module('app', []);

app.controller('appController', ['$scope', '$http', '$interval', '$location', function($scope, $http, $interval, $location) {
	
	$scope.srchterm = "";
	$scope.precheckout = null;
	$scope.postcheckout = null;
	
	$scope.checkoutProductFn = function() {
		var url = $location.absUrl();
		if (url.includes("checkout")) {
			
			$scope.precheckout = " ";
			$scope.postcheckout = null;
			
			var splits = url.split('/');
			var prodId = splits[splits.length-1];
			
			$http({
				method : 'GET',
				url : '/api/products/' + prodId,
				data : null,
				headers : {
					'Content-Type' : 'application/json'
				}
			}).success(function(data, status, headers, config) {
				$scope.checkoutProduct = data;
				loadRating();
			}).error(function(data, status, headers, config) {
				console.log("failure message: " + JSON.stringify({
					data : data
				}));
			});
			
		}
	};
	

	$scope.postCheckout = function(flag) {
		$scope.precheckout = null;
		$scope.postcheckout = " ";
		redirectHome();
	};

	$scope.changeDirection = function(flag) {
		moveBckward = flag;
	};
	
	$scope.searchCategory = function(category, discountColumn) {
		$http({
			method : 'GET',
			url : '/api/products/search/findByCat?searchTerm=' + category,
			data : null,
			headers : {
				'Content-Type' : 'application/json'
			}
		}).success(function(data, status, headers, config) {
			
			// Data
			$scope.resultProducts = data._embedded.products;
			
			// Discount column display
			if(discountColumn) {
				$scope.selected = "discount";
			} else {
				$scope.selected = null;
			}
			
			// Loading Rating
			loadRating();
			
		}).error(function(data, status, headers, config) {
			console.log("failure message: " + JSON.stringify({
				data : data
			}));
		});
	};
	
	$scope.fullSearch = function(search) {
		$http({
			method : 'GET',
			url : '/api/products/search/fullSearch?searchTerm=' + search,
			data : null,
			headers : {
				'Content-Type' : 'application/json'
			}
		}).success(function(data, status, headers, config) {
			$scope.resultProducts = data._embedded.products;
			loadRating();
		}).error(function(data, status, headers, config) {
			console.log("failure message: " + JSON.stringify({
				data : data
			}));
		});
	};
	
	$scope.randomProductsFn = function() {
		$http({
			method : 'GET',
			url : '/api/products/search/randomProducts',
			data : null,
			headers : {
				'Content-Type' : 'application/json'
			}
		}).success(function(data, status, headers, config) {
			$scope.randomProducts = data._embedded.products;
			loadRating();
		}).error(function(data, status, headers, config) {
			console.log("failure message: " + JSON.stringify({
				data : data
			}));
		});
	};
	
	$interval($scope.randomProductsFn, 10000);
	$scope.randomProductsFn();
	$scope.checkoutProductFn();
	
}]);

var $j = jQuery.noConflict();

var loadRating = function() {
	setTimeout(displayRating, 100);
}


var displayRating = function() {
	$j('div.rating').raty();
}


var redirectHome = function() {
	setTimeout(redirectHomeURL, 3000);
}

var redirectHomeURL = function() {
	$j(location).attr('href', '/');
}




$j('#autoKitten').carrotCell({ 
	auto: true,
	step: 1,
	delay: 3000,
	speed: 500, 
	pauseOnHover: true,
	sideways: false
});
