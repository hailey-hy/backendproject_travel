package com.korea.travel.purchase;

public class PurchaseDTO {

	/* private String id; */
		private String product;
		private String count;
		private String eventDate;
	/* private String price; */
		/*
		 * public String getId() { return id; } public void setId(String id) { this.id =
		 * id; }
		 */
		public String getProduct() {
			return product;
		}
		public void setProduct(String product) {
			this.product = product;
		}
		public String getCount() {
			return count;
		}
		public void setCount(String count) {
			this.count = count;
		}
		public String getEventDate() {
			return eventDate;
		}
		public void setEventDate(String eventDate) {
			this.eventDate = eventDate;
		}
//		public String getPrice() {
//			return price;
//		}
//		public void setPrice(String price) {
//			this.price = price;
//		}
		@Override
		public String toString() {
			return "PurchaseDTO [product=" + product + ", count=" + count + ", eventDate=" + eventDate + "]";
		}
		
		


}
