###
# ownCloud
#
# @author Bernhard Posselt
# Copyright (c) 2012 - Bernhard Posselt <nukeawhale@gmail.com>
#
# This file is licensed under the Affero General Public License version 3 or later.
# See the COPYING-README file
#
###

angular.module('MyApp').controller 'ExampleController',
['$scope', 'Config', 'MyAppRequest', '_ExampleController', 'ItemModel',
($scope, Config, MyAppRequest, _ExampleController, ItemModel) ->
	return new _ExampleController($scope, Config, MyAppRequest, ItemModel)
]
