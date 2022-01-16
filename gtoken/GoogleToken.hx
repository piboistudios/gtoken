package gtoken;

@:jsRequire("gtoken", "GoogleToken") extern class GoogleToken {
	/**
		Create a GoogleToken.
	**/
	function new(?options:TokenOptions);
	final accessToken : Null<String>;
	final idToken : Null<String>;
	final tokenType : Null<String>;
	final refreshToken : Null<String>;
	@:optional
	var expiresAt : Float;
	@:optional
	var key : String;
	@:optional
	var keyFile : String;
	@:optional
	var iss : String;
	@:optional
	var sub : String;
	@:optional
	var scope : String;
	@:optional
	var rawToken : TokenData;
	@:optional
	var tokenExpires : Float;
	@:optional
	var email : String;
	@:optional
	var additionalClaims : { };
	@:optional
	var eagerRefreshThresholdMillis : Float;
	@:optional
	private var inFlightRequest : Dynamic;
	/**
		Returns whether the token has expired.
	**/
	function hasExpired():Bool;
	/**
		Returns whether the token will expire within eagerRefreshThresholdMillis
	**/
	function isTokenExpiring():Bool;
	/**
		Returns a cached token or retrieves a new one from Google.
	**/
	@:overload(function(callback:GetTokenCallback, ?opts:GetTokenOptions):Void { })
	function getToken(?opts:GetTokenOptions):js.lib.Promise<TokenData>;
	/**
		Given a keyFile, extract the key and client email if available
	**/
	function getCredentials(keyFile:String):js.lib.Promise<Credentials>;
	private var getTokenAsync : Dynamic;
	private var getTokenAsyncInner : Dynamic;
	private var ensureEmail : Dynamic;
	/**
		Revoke the token if one is set.
	**/
	@:overload(function(callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void { })
	function revokeToken():js.lib.Promise<ts.Undefined>;
	private var revokeTokenAsync : Dynamic;
	/**
		Configure the GoogleToken for re-use.
	**/
	private var configure : Dynamic;
	/**
		Request the token from Google.
	**/
	private var requestToken : Dynamic;
	static var prototype : GoogleToken;
}