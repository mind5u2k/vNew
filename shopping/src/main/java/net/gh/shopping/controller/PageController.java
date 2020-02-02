package net.gh.shopping.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.gh.shopping.exception.ProductNotFoundException;
import net.gh.shopping.model.categoryWiseProduct;
import net.gh.shoppingBack.dao.CategoryDAO;
import net.gh.shoppingBack.dao.ProductDAO;
import net.gh.shoppingBack.dto.Category;
import net.gh.shoppingBack.dto.Product;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	private static final Logger logger = LoggerFactory.getLogger(PageController.class);

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index(@RequestParam(name = "logout", required = false) String logout) {
		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "Home");

		logger.info("Inside PageController index method - INFO");
		logger.debug("Inside PageController index method - DEBUG");
		mv.addObject("products", productDAO.list());
		if (logout != null) {
			mv.addObject("message", "You have successfully logged out!");
		}

		mv.addObject("userClickHome", true);
		return mv;
	}

	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}

	@RequestMapping(value = "/armTool")
	public ModelAndView armTool() {
		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "ARM Tool");
		mv.addObject("userClickArmTool", true);
		return mv;
	}

	@RequestMapping(value = "/training")
	public ModelAndView training() {
		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("products", productDAO.list());
		mv.addObject("title", "Training");
		mv.addObject("userClicktrainings", true);
		return mv;
	}

	@RequestMapping(value = "/privacy")
	public ModelAndView privacy() {
		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "Privacy");
		mv.addObject("userClickPrivacy", true);
		return mv;
	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
	}

	/*
	 * Methods to load all the products and based on category
	 */

	@RequestMapping(value = "/show/all/products")
	public ModelAndView showAllProducts() {
		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "All Products");

		Category e = new Category();
		e.setId(0);
		e.setName("All Products");

		List<Category> categories = new ArrayList<Category>();
		categories.add(e);
		categories.addAll(categoryDAO.list());
		mv.addObject("categories", categories);
		List<Product> products = productDAO.listActiveProducts();
		mv.addObject("category", e);
		mv.addObject("products", products);
		mv.addObject("userClickAllProducts", true);
		return mv;
	}

	@RequestMapping(value = "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("productsByCat");
		Category category = null;
		List<Product> products = new ArrayList<Product>();
		if (id == 0) {
			category = new Category();
			category.setName("All Products");
			products = productDAO.listActiveProducts();
		} else {
			category = categoryDAO.get(id);
			products = productDAO.listActiveProductsByCategory(id);
		}
		mv.addObject("category", category);
		mv.addObject("products", products);
		return mv;
	}

	/*
	 * Viewing a single product
	 */

	@RequestMapping(value = "/show/{id}/product")
	public ModelAndView showSingleProduct(@PathVariable int id) throws ProductNotFoundException {

		ModelAndView mv = new ModelAndView("page1");

		Product product = productDAO.get(id);

		if (product == null)
			throw new ProductNotFoundException();

		// update the view count
		product.setViews(product.getViews() + 1);
		productDAO.update(product);
		// ---------------------------

		mv.addObject("title", product.getName());
		mv.addObject("product", product);

		mv.addObject("userClickShowProduct", true);

		return mv;

	}

	@RequestMapping(value = "/membership")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("page");
		logger.info("Page Controller membership called!");
		return mv;
	}

	@RequestMapping(value = "/login")
	public ModelAndView login(@RequestParam(name = "error", required = false) String error,
			@RequestParam(name = "logout", required = false) String logout) {
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("title", "Login");
		if (error != null) {
			mv.addObject("message", "Username and Password is invalid!");
		}
		if (logout != null) {
			mv.addObject("logout", "You have logged out successfully!");
		}
		return mv;
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		// Invalidates HTTP Session, then unbinds any objects bound to it.
		// Removes the authentication from securitycontext
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		return "redirect:/login?logout";
	}

	@RequestMapping(value = "/access-denied")
	public ModelAndView accessDenied() {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("errorTitle", "Aha! Caught You.");
		mv.addObject("errorDescription", "You are not authorized to view this page!");
		mv.addObject("title", "403 Access Denied");
		return mv;
	}

}
