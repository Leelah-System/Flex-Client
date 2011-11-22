package domain.user
{
	[Bindable]
	public class User
	{
		public var id	:Number;
		public var url	:String;
		public var login	:String;
		public var token	:String;
		public var email	:String;
		public var first_name	:String;
		public var last_name	:String;
		public var user_roles	:Array;
		
		
		public function User()
		{
			user_roles = new Array;
		}
		
		public function get full_name():String
		{
			return first_name + " " + last_name;
		}
		
		public static function createObjectFromJsonObject(object:Object):User
		{
			var user:User = new User;
			
			if (object != null ) {
				// id
				if (object.hasOwnProperty("id") && object.id is Number)
					user.id = object.id;
				
				// login
				if (object.hasOwnProperty("login") && object.login is String)
					user.login = object.login;
				
				// token
				if (object.hasOwnProperty("token") && object.token is String)
					user.token = object.token;
				
				// email
				if (object.hasOwnProperty("email") && object.email is String)
					user.email = object.email;
				
				// first_name
				if (object.hasOwnProperty("first_name") && object.first_name is String)
					user.first_name = object.first_name;
				
				// last_name
				if (object.hasOwnProperty("last_name") && object.last_name is String)
					user.last_name = object.last_name;
			}
			
			return user;
		}
	}
}