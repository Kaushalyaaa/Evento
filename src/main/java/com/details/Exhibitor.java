package com.details;

public class Exhibitor {
		private int id;
		private String name;
		private String email;
		private String phone;
		private String image;
		private String description;
		private String category;
		
		public Exhibitor(int id, String name, String email, String phone, String image, String description, String category) {
			this.id = id;
			this.name = name;
			this.email = email;
			this.phone = phone;
			this.image = image;
			this.description = description;
			this.category = category;
		}

		public int getId() {
			return id;
		}

		public String getName() {
			return name;
		}

		public String getEmail() {
			return email;
		}

		public String getPhone() {
			return phone;
		}

		public String getImage() {
			return image;
		}

		public String getDescription() {
			return description;
		}

		public String getCategory() {
			return category;
		}

		public void setId(int id) {
			this.id = id;
		}

		public void setName(String name) {
			this.name = name;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

		public void setImage(String image) {
			this.image = image;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public void setCategory(String category) {
			this.category = category;
		}
		
	}