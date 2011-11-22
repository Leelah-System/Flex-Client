package views
{
	import domain.user.User;
	
	import mx.core.FlexGlobals;
	
	import spark.components.View;
	
	public class UserView extends View
	{	
		[Bindable]
		protected var user:User = null;
		
		
		public function UserView()
		{
			super();
			
			user = FlexGlobals.topLevelApplication.user;
		}
	}
}