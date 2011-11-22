package domain.product
{
	[Bindable]
	public class Product
	{
		public var id	:Number;
		public var label	:String;
		public var name		:String;
		public var price	:Number;
		public var stocks	:Number;
		public var reference	:String;
		public var description	:String;
		
		
		public function Product()
		{
		}
		
		public static function createObjectFromObjectJson(object:Object):Product
		{
			var product:Product = new Product;
			
			if (object != null ) {
				// id
				if (object.hasOwnProperty("id") && object.id is Number)
					product.id = object.id;
				
				// label
				if (object.hasOwnProperty("label") && object.label is String)
					product.label = object.label;
				
				// name
				if (object.hasOwnProperty("name") && object.name is String)
					product.name = object.name;
				
				// price
				if (object.hasOwnProperty("price") && object.price is Number)
					product.price = object.price;
				
				// id
				if (object.hasOwnProperty("stocks") && object.stocks is Number)
					product.stocks = object.stocks;
				
				// reference
				if (object.hasOwnProperty("reference") && object.reference is String)
					product.reference = object.reference;
				
				// description
				if (object.hasOwnProperty("description") && object.description is String)
					product.description = object.description;
			}
			
			return product;
		}
		
		public static function createCollectionFromJsonObject(object:Object):Array
		{
			var productsCollection:Array = new Array;
			
			
			if (object != null) {
				for each (var productObject:Object in object) {
					if (productObject.hasOwnProperty("product")) {
						var product:Product = createObjectFromObjectJson(productObject["product"]);
						productsCollection.push(product);
					}
				}
			}
			
			return productsCollection;
		}
	}
}