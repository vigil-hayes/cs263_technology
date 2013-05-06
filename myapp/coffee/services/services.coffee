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

angular.module('MyApp').factory 'MyAppRequest',
['$http', 'Config', '_MyAppRequest', 'Publisher',
($http, Config, _MyAppRequest, Publisher) ->
	return new _MyAppRequest($http, Config, Publisher)
]

angular.module('MyApp').factory 'ItemModel',
['_ItemModel',
(_ItemModel) ->
	return new _ItemModel()
]

angular.module('MyApp').factory 'Publisher',
['_Publisher', 'ItemModel',
(_Publisher, ItemModel) ->
	publisher = new _Publisher()
	publisher.subscribeModelTo(ItemModel, 'items')
	return publisher
]
