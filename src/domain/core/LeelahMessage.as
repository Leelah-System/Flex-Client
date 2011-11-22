package domain.core
{
	import com.adobe.serialization.json.JSON;
	
	import flash.utils.describeType;
	
	import mx.rpc.events.ResultEvent;

	public class LeelahMessage
	{
		public var success	:Boolean;
		public var result	:Object;
		public var msg		:String;
		
		
		public function LeelahMessage()
		{
		}
		
		public function getResultProperty(property:String):Object
		{
			if (result != null && result.hasOwnProperty(property))
				return result[property];
			
			return null;
		}
		
		public static function getFullUrl(adresseIp:String, apiPath:String, token:String = null):String
		{
			if (token != null)
				return "http://" + adresseIp + "/api/" + token + "/" + apiPath;
				
			return "http://" + adresseIp + "/api/" + apiPath;
		}
		
		public static function createObjectFromJsonObject(event:ResultEvent):LeelahMessage
		{
			var object:Object = JSON.decode(event.result as String);
			var message:LeelahMessage = new LeelahMessage;
			
			if (object != null ) {
				// success
				if (object.hasOwnProperty("success") && object.success is Boolean)
					message.success = object.success;
				
				// result
				if (object.hasOwnProperty("result"))
					message.result = object.result;
				
				// msg
				if (object.hasOwnProperty("msg") && object.msg is String)
					message.msg = object.msg;
			}
			
			return  message;
		}
	}
}