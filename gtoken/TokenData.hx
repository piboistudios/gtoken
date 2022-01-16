package gtoken;

typedef TokenData = {
	@:optional
	var refresh_token : String;
	@:optional
	var expires_in : Float;
	@:optional
	var access_token : String;
	@:optional
	var token_type : String;
	@:optional
	var id_token : String;
};