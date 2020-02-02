package net.gh.shopping.model;

import java.util.List;

import net.gh.shoppingBack.dto.Category;
import net.gh.shoppingBack.dto.Product;

public class categoryWiseProduct {

	private Category category;
	private List<Product> products;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

}
