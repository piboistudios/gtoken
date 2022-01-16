package gtoken;

/**
	Copyright 2018 Google LLC
	
	Distributed under MIT license.
	See file LICENSE for detail or copy at https://opensource.org/licenses/MIT
**/
typedef GetTokenCallback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, token:TokenData) -> Void>;