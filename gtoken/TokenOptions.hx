package gtoken;

typedef TokenOptions = {
	@:optional
	var keyFile : String;
	@:optional
	var key : String;
	@:optional
	var email : String;
	@:optional
	var iss : String;
	@:optional
	var sub : String;
	@:optional
	var scope : ts.AnyOf2<String, Array<String>>;
	@:optional
	var additionalClaims : { };
	@:optional
	var eagerRefreshThresholdMillis : Float;
};